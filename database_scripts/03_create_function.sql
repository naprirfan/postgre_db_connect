-- This is an editArtist function
-- This works by editing artists table field and also artistsSkills table
-- Returns 1 when succeed
-- Usage example:  SELECT editArtist('hello','markdown',100, array[1,2,3]);

-- Drop function is useful when altering function's return type
DROP FUNCTION editArtist(varchar, varchar, integer, int[]);

BEGIN;

CREATE OR REPLACE FUNCTION editArtist (_artistname varchar, _infomarkdown varchar, _artistId integer, _artistSkills int[]) RETURNS RECORD as $$
  
  DECLARE
    i int;
    result RECORD;

  BEGIN
    -- Update artist
    UPDATE Artists SET Name = _artistname, InfoMarkdown = _infomarkdown WHERE ArtistId = _artistId;

    -- Delete skillsets
    DELETE FROM ArtistsSkills WHERE ArtistId = _artistId;

    -- Insert new skillsets
    FOREACH i IN ARRAY _artistSkills 
    LOOP
      INSERT INTO ArtistsSkills (ArtistId,SkillId) VALUES (_artistId, i);
    END LOOP;
    
    -- Return record
    SELECT * FROM Artists WHERE ArtistId = _artistId INTO result;
    
    RETURN result;
  END;

$$ LANGUAGE plpgsql;

REVOKE ALL ON FUNCTION editArtist(varchar, varchar, integer, int[]) FROM PUBLIC;

GRANT EXECUTE ON FUNCTION editArtist(varchar, varchar, integer, int[]) TO myusername;

COMMIT;