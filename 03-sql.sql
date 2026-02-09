--1a Llistat d’alumnes amb puntuació global, ordenat descendent (rànquing).
SELECT dni,
    nom_cognoms,
    nota_global
FROM alumne al
    JOIN avaluacio av ON al.dni = av.dni_alumne
ORDER BY nota_global DESC;
--2a Top 5 alumnes per puntuació que encara no tenen assignació.
SELECT dni,
    nom_cognoms,
    nota_global
FROM alumne al
    JOIN avaluacio av ON al.dni = av.dni_alumne
WHERE dni NOT IN (
        SELECT dni_alumne
        FROM assignacio
    )
ORDER BY nota_global DESC
LIMIT 5;
--3a Per cada empresa: nombre de currículums rebuts, i quants estan en estat “entrevista/acceptat”.
SELECT (
        SELECT count(*)
        FROM enviament
    ) AS "Currículums rebuts",
    COUNT(codicv),
    estat
FROM enviament
WHERE estat = 'Acceptat'
    OR estat = 'Entrevista'
GROUP BY estat;
-- 4a Historial d’enviaments d’un alumne (totes les empreses, dates, estat, última versió de CV).
SELECT dni,
    nom_cognoms,
    en.data_contacte,
    en.data_resposta,
    en.data_entrevista,
    em.CIFNIF,
    en.estat,
(
        SELECT MAX(codicv)
        FROM cv
        WHERE dni_alumne = dni
        GROUP BY dni
    ) AS "Ultima versio CV"
FROM alumne al
    JOIN cv ON al.dni = cv.dni_alumne
    JOIN enviament en ON cv.codicv = en.codicv
    JOIN empresa em ON en.CIFNIF_empresa = em.CIFNIF;
-- 5a Alumnes amb més de 2 enviaments sense resposta (estat “Rebut” i han passat 279 dies).
SELECT dni_alumne
FROM enviament en
    JOIN cv ON en.codicv = cv.codicv
WHERE en.estat = 'Rebut'
    AND data_contacte < '2025-05-01'
GROUP BY dni_alumne
HAVING COUNT(en.codicv) > 2;
--Preguntar 
-- 6a Informe d’assignacions actives: alumne + empresa + dates + tutor.
SELECT dni,
    al.nom_cognoms,
    CIFNIF,
    em.nom,
    data_inici,
    data_fi,
    tutor
FROM alumne al
    JOIN assignacio asg ON al.dni = asg.dni_alumne
    JOIN empresa em ON CIFNIF_empresa = CIFNIF;
--7a Consulta que detecti inconsistències: alumnes amb assignació però sense cap enviament “acceptat” prèviament (si el vostre flux ho contempla)
SELECT 
    dni, nom_cognoms 
FROM 
    alumne al 
JOIN 
    cv ON al.dni = cv.dni_alumne 
JOIN 
    enviament en ON cv.codicv = en.codicv 
WHERE 
    dni NOT IN (SELECT dni_alumne FROM assignacio) 
AND 
    en.estat = 'Acceptat';

-- 8a Alumnes actius amb puntuació global superior a 7, mostrant també la mitjana global.
SELECT dni,
    nom_cognoms,
    nota_global,
    (
        SELECT ROUND(AVG(nota_global))
        FROM avaluacio
    )
FROM alumne
    JOIN avaluacio ON dni = dni_alumne
WHERE nota_global > 7;
--9a Empreses d’un sector concret (per exemple, ‘Tecnologia’ o ‘Educació’) que no han rebut cap enviament
SELECT nom 
FROM empresa em
LEFT JOIN enviament ev ON em.CIFNIF = ev.CIFNIF_empresa
WHERE (em.sector = 'Tecnologia' OR em.sector = 'Educació' )AND ev.CIFNIF_empresa IS NULL;
