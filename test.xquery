for $e in doc("assignment6_masonfleming.xml")/assignment6_masonfleming/employee_table/employee,
    $w in doc("assignment6_masonfleming.xml")/assignment6_masonfleming/works_table/worker
where ($w/lastname=$e/lastname ) and ($w/firstname=$e/firstname) and ($w/middleinitial=$e/middleinitial)
return <grouptest>{$e/firstname}, {$w/companyname}</grouptest>