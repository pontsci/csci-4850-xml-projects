for $e in doc("assignment6_masonfleming.xml")/assignment6_masonfleming/employee_table/employee,
    $w in doc("assignment6_masonfleming.xml")/assignment6_masonfleming/works_table/worker,
    $c in doc("assignment6_masonfleming.xml")/assignment6_masonfleming/company_table/company
where $e/firstname=$w/firstname and $e/middleinitial=$w/middleinitial and $e/lastname=$w/lastname 
and $c/companyname=$w/companyname and $e/city="Lincoln" and $c/city="Omaha"
return <group>{$e/firstname}{$e/middleinitial}{$e/lastname}</group>