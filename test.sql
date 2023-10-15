SELECT * FROM `nj` LEFT JOIN nj2 on nj.id = nj2.id UNION SELECT * FROM `nj` RIGHT JOIN nj2 on nj.id = nj2.id;
//Full outer join
