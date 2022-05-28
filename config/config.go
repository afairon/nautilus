package config

import (
	"io/ioutil"

	"gopkg.in/yaml.v3"
)

type Config struct {
	Server     Server     `yaml:"server,flow"`
	PostgreSQL PostgreSQL `yaml:"postgresql,flow"`
	Redis      *Redis     `yaml:"redis,flow"`
	Storage    Storage    `yaml:"storage,flow"`
	SMTP       *SMTP      `yaml:"smtp,flow"`
	Log        Log        `yaml:"log,flow"`
}

type SSL struct {
	Certificate string `yaml:"certificate"`
	Key         string `yaml:"key"`
}

type GRPC struct {
	Address string `yaml:"address"`
	Port    int    `yaml:"port"`
	SSL     *SSL   `yaml:"ssl,flow"`
}

type HTTP struct {
	Address string `yaml:"address"`
	Port    int    `yaml:"port"`
	GRPCWeb bool   `yaml:"grpc_web"`
	SSL     *SSL   `yaml:"ssl,flow"`
}

type Session struct {
	Secret  string `yaml:"secret"`
	Timeout int64  `yaml:"timeout"`
}

type Server struct {
	GRPC    GRPC    `yaml:"grpc,flow"`
	HTTP    HTTP    `yaml:"http,flow"`
	Session Session `yaml:"session,flow"`
}

type PostgreSQL struct {
	Host     string `yaml:"host"`
	Port     int    `yaml:"port"`
	User     string `yaml:"user"`
	Password string `yaml:"password"`
	DBName   string `yaml:"dbname"`
	SSL      bool   `yaml:"ssl"`
}

type Redis struct {
	Host     string `yaml:"host"`
	Port     int    `yaml:"port"`
	Password string `yaml:"password"`
	DB       int    `yaml:"db"`
}

type FS struct {
	Path string `yaml:"path"`
	Base string `yaml:"base"`
}

type S3 struct {
	Endpoint  string `yaml:"endpoint"`
	AccessKey string `yaml:"access_key"`
	SecretKey string `yaml:"secret_key"`
	Region    string `yaml:"region"`
	Bucket    string `yaml:"bucket"`
	Duration  int64  `yaml:"duration"`
}

type Storage struct {
	FS FS  `yaml:"fs,flow"`
	S3 *S3 `yaml:"s3,flow"`
}

type SMTP struct {
	Host      string `yaml:"host"`
	Port      int    `yaml:"port"`
	Username  string `yaml:"username"`
	Password  string `yaml:"password"`
	AuthProto string `yaml:"auth"`
	TLS       bool   `yaml:"tls"`
}

type Log struct {
	Path string `yaml:"path"`
}

// New creates and return a new configuration structure.
func New() *Config {
	return &Config{}
}

// LoadConfig reads the configuration file and unmarshal it into a config structure.
func LoadConfig(filename string) (*Config, error) {
	data, err := ioutil.ReadFile(filename)
	if err != nil {
		return nil, err
	}

	// default configuration
	config := &Config{
		Server: Server{
			GRPC: GRPC{
				Address: "127.0.0.1",
				Port:    50051,
			},
			HTTP: HTTP{
				Address: "127.0.0.1",
				Port:    8080,
				GRPCWeb: false,
			},
			Session: Session{
				Timeout: 3600,
			},
		},
		PostgreSQL: PostgreSQL{
			Host: "127.0.0.1",
			Port: 5432,
			SSL:  false,
		},
		Storage: Storage{
			FS: FS{
				Path: "storage",
			},
		},
		Log: Log{
			Path: "grpc.log",
		},
	}
	err = config.read(data)

	if config.Storage.S3 != nil {
		if config.Storage.S3.Region == "" {
			config.Storage.S3.Region = "us-west-2"
		}
		if config.Storage.S3.Duration == 0 {
			config.Storage.S3.Duration = 15
		}
	}

	return config, err
}

func (c *Config) GetGRPC() *GRPC {
	return &c.Server.GRPC
}

func (c *Config) SetGRPC(address string, port int) {
	c.Server.GRPC.Address = address
	c.Server.GRPC.Port = port
}

func (c *Config) GetHTTP() *HTTP {
	return &c.Server.HTTP
}

func (c *Config) SetHTTP(address string, port int, GRPCWeb bool) {
	c.Server.HTTP.Address = address
	c.Server.HTTP.Port = port
	c.Server.HTTP.GRPCWeb = GRPCWeb
}

func (c *Config) GetSession() *Session {
	return &c.Server.Session
}

func (c *Config) SetSession(secret string, timeout int64) {
	c.Server.Session.Secret = secret
	c.Server.Session.Timeout = timeout
}

func (c *Config) GetServer() *Server {
	return &c.Server
}

func (c *Config) GetPostgreSQL() *PostgreSQL {
	return &c.PostgreSQL
}

func (c *Config) SetPostgreSQL(host string, port int, user, password, dbname string, ssl bool) {
	c.PostgreSQL.Host = host
	c.PostgreSQL.Port = port
	c.PostgreSQL.User = user
	c.PostgreSQL.Password = password
	c.PostgreSQL.DBName = dbname
	c.PostgreSQL.SSL = ssl
}

func (c *Config) GetRedis() *Redis {
	return c.Redis
}

func (c *Config) SetRedis(host string, port int, password string, db int) {
	if c.Redis == nil {
		c.Redis = &Redis{}
	}
	c.Redis.Host = host
	c.Redis.Port = port
	c.Redis.Password = password
	c.Redis.DB = db
}

func (c *Config) GetFS() *FS {
	return &c.Storage.FS
}

func (c *Config) SetFS(path, base string) {
	c.Storage.FS.Path = path
	c.Storage.FS.Base = base
}

func (c *Config) GetS3() *S3 {
	return c.Storage.S3
}

func (c *Config) SetS3(endpoint, accessKey, secretKey, region, bucket string) {
	if c.Storage.S3 == nil {
		c.Storage.S3 = &S3{}
	}
	c.Storage.S3.Endpoint = endpoint
	c.Storage.S3.AccessKey = accessKey
	c.Storage.S3.SecretKey = secretKey
	c.Storage.S3.Region = region
	c.Storage.S3.Bucket = bucket
}

func (c *Config) GetStorage() *Storage {
	return &c.Storage
}

func (c *Config) GetSMTP() *SMTP {
	return c.SMTP
}

func (c *Config) SetSMTP(host string, port int, username, password, auth string, tls bool) {
	if c.SMTP == nil {
		c.SMTP = &SMTP{}
	}
	c.SMTP.Host = host
	c.SMTP.Port = port
	c.SMTP.Username = username
	c.SMTP.Password = password
	c.SMTP.AuthProto = auth
	c.SMTP.TLS = tls
}

func (c *Config) GetLog() *Log {
	return &c.Log
}

func (c *Config) SetLog(path string) {
	c.Log.Path = path
}

// read unmarshals data
func (c *Config) read(data []byte) error {
	return yaml.Unmarshal(data, c)
}
