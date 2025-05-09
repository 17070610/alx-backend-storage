-- Script that lists all bands with Glam rock as their main style

SELECT
    band_name,
    (IFNULL(split, 2022) - formed) AS lifespan
FROM
    metal_bands
WHERE
    style LIKE '%Glam rock%'
    AND formed IS NOT NULL
ORDER BY
    lifespan DESC;
