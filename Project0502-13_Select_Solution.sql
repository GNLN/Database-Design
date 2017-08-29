#COUNT * STATEMENTS#

SELECT COUNT(*) FROM source

SELECT COUNT(*) FROM year
SELECT COUNT(*) FROM program

SELECT COUNT(*) FROM university

SELECT COUNT(*) FROM gives

SELECT COUNT(*) FROM offers

#SELECT Solution Statements for Business Transactions#

1.
SELECT year, sName, uName, pName, rank, weightedRank FROM gives WHERE pName='MBA' AND year= 2015 AND sName='US News' ORDER BY year DESC, pName, weightedRank DESC, rank LIMIT 5

2.
SELECT g.year, g.sName, g.uniName, g.pName, g.rank, g.weightedRank FROM gives g, university u WHERE g.pName='MIS' AND u.uLocation='North-East' AND g.uniName=u.uniName ORDER BY year DESC, pName, weightedRank DESC



