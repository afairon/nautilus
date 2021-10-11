-- FUNCTION: public.update_modified_column_timestamp()

-- DROP FUNCTION public.update_modified_column_timestamp();

CREATE OR REPLACE FUNCTION public.update_modified_column_timestamp()
  RETURNS trigger
AS $BODY$
begin
  NEW.updated_on = now();
  RETURN NEW;
end;
$BODY$ LANGUAGE 'plpgsql';
