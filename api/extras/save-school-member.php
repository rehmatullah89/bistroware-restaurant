<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
	**                                                                                           **
	**  Copyright 2015 (C) Triple Tree Solutions                                                 **
	**  http://www.3-tree.com                                                                    **
	**                                                                                           **
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Manager:                                                                         **
	**                                                                                           **
	**      Name  :  Muhammad Tahir Shahzad                                                      **
	**      Email :  mtshahzad@sw3solutions.com                                                  **
	**      Phone :  +92 333 456 0482                                                            **
	**      URL   :  http://www.mtshahzad.com                                                    **
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );


	$sUser        = IO::strValue("User");
	$iSchool      = IO::intValue("School");
	$sMemberId    = IO::strValue("Id");
	$iType        = IO::intValue("Type");
	$sMember      = IO::strValue("Name");
	$sPhone       = IO::strValue("Phone");
	$iDesignation = IO::intValue("Designation");
	$sDateTime    = IO::strValue("DateTime");

	
	logApiCall($_POST);
	
	
	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $iType == 0 || $sMember == "" || $iDesignation == 0)
		$aResponse["Message"] = "Invalid Request";

	else
	{
		$sSQL = "SELECT id, name, email, provinces, districts, schools, status FROM tbl_admins WHERE MD5(id)='$sUser'";
		$objDb->query($sSQL);

		if ($objDb->getCount( ) == 0)
			$aResponse["Message"] = "Invalid User";

		else if ($objDb->getField(0, "status") != "A")
			$aResponse["Message"] = "User Account is Disabled";

		else
		{
			$iUser      = $objDb->getField(0, "id");
			$sName      = $objDb->getField(0, "name");
			$sEmail     = $objDb->getField(0, "email");
			$sProvinces = $objDb->getField(0, "provinces");
			$sDistricts = $objDb->getField(0, "districts");
			$sSchools   = $objDb->getField(0, "schools");

			$iProvinces = @explode(",", $sProvinces);
			$iDistricts = @explode(",", $sDistricts);
			$iSchools   = @explode(",", $sSchools);

			
			if ($sDateTime == "")
				$sDateTime = date("Y-m-d H:i:s");


			$sSQL = "SELECT district_id, province_id FROM tbl_schools WHERE id='$iSchool'";
			$objDb->query($sSQL);

			$iDistrict   = $objDb->getField(0, "district_id");
			$iProvince   = $objDb->getField(0, "province_id");	


			if ($objDb->getCount( ) == 0)
				$aResponse["Message"] = "Invalid Request, no School Found!";

			else if ( ($sSchools != "" && !@in_array($iSchool, $iSchools)) || ($sSchools == "" && (!@in_array($iProvince, $iProvinces) || !@in_array($iDistrict, $iDistricts))) )
				$aResponse["Message"] = "Request denied, You don't have permissions for requested School!";
			
			else if (getDbValue("COUNT(1)", "tbl_school_members", "school_id='$iSchool' AND type_id='$iType' AND name LIKE '$sMember' AND designation_id='$iDesignation'") > 0)
				$aResponse["Message"] = "Member already exists";
			
			else if ($sMemberId != "" && getDbValue("COUNT(1)", "tbl_school_members", "school_id='$iSchool' AND type_id='$iType' AND member_id='$sMemberId'") > 0)
			{
				$aResponse["Status"]  = "OK";
				$aResponse["Message"] = "Member already exists";
			}

			else
			{
                $iMember = getNextId('tbl_school_members');

                $sSQL = "INSERT INTO tbl_school_members SET id             = '$iMember',  
                                                            school_id      = '$iSchool',
                                                            name           = '$sMember',
                                                            type_id        = '$iType',
                                                            designation_id = '$iDesignation',   
                                                            phone          = '$sPhone',
                                                            status         = 'A',
															created_by     = '$iUser',
															created_at     = '$sDateTime',
															modified_by    = '$iUser',
															modified_at    = '$sDateTime',
															member_id      = '$sMemberId'";
					
				if ($objDb->execute($sSQL, true, $iUser, $sName, $sEmail) == true)
				{
					$sMembers = array( );
					
					
					$sSQL = "SELECT * FROM tbl_school_members WHERE school_id='$iSchool' AND status='A' ORDER BY name";
					$objDb->query($sSQL);
					
					$iCount = $objDb->getCount( );
					
					for ($i = 0; $i < $iCount; $i ++)
					{
						$iMember      = $objDb->getField($i, "id");
						$iType        = $objDb->getField($i, "type_id");
						$iDesignation = $objDb->getField($i, "designation_id");
						$sName        = $objDb->getField($i, "name");
						$sPhone       = $objDb->getField($i, "phone");
						
						
						$sMembers[] = array("Id"          => $iMember,
											"Type"        => $iType, 
											"Designation" => $iDesignation, 
											"Name"        => $sName, 
											"Phone"       => $sPhone);
					}
				
					
					$aResponse["Status"]  = "OK";
					$aResponse["Message"] = (getDbValue("type", "tbl_school_member_types", "id='$iType'")." Member Added successfully!");
					$aResponse['Members'] = $sMembers;


				}

				else
					$aResponse["Message"] = "An ERROR occured, please try again.";
			}
		}
	}

	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>