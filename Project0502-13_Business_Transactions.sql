SELECT * FROM source

SELECT * FROM year

SELECT * FROM program

SELECT * FROM university

SELECT * FROM gives	

SELECT * FROM offers


SELECT G.year, G.sName, G.uniName, G.pName, G.rank, G.weightedRank, O.schoolName, O.costPerCredit, O.pCost, O.totalCredits
FROM gives G JOIN offers O
ON G.pName=O.pName 
AND G.uniName=O.uniName
WHERE G.pName='MBA'
ORDER BY G.rank


SELECT G.year, G.sName, G.uniName, G.pName, G.rank, G.weightedRank, O.schoolName, O.costPerCredit, O.pCost, O.totalCredits
FROM gives G JOIN offers O
ON G.pName=O.pName 
AND G.uniName=O.uniName
WHERE G.pName='MSIS' AND G.year=2016
ORDER BY G.rank

SELECT G.year, G.sName, G.uniName, G.pName, G.rank, G.weightedRank, O.schoolName, O.costPerCredit, O.pCost, O.totalCredits
FROM [dbo].[Rankings4U.Gives] G JOIN [dbo].[Rankings4U.Offers] O
ON G.pName=O.pName 
AND G.uniName=O.uniName
WHERE G.pName='MSBA' AND G.year=2015 AND G.sName='TFE Times'
ORDER BY G.rank


SELECT G.year, G.sName, G.uniName, G.pName, G.rank, G.weightedRank, O.schoolName, O.costPerCredit, O.pCost, O.totalCredits
FROM [dbo].[Rankings4U.Gives] G JOIN [dbo].[Rankings4U.Offers] O
ON G.pName=O.pName 
AND G.uniName=O.uniName
WHERE G.uniName='Harvard University'
ORDER BY G.rank






