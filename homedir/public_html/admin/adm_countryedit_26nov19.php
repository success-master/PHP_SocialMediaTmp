<?php

/*****************************************************

* � copyright 1999 - 2020 iDateMedia, LLC.

*

* All materials and software are copyrighted by iDateMedia, LLC.

* under British, US and International copyright law. All rights reserved.

* No part of this code may be reproduced, sold, distributed

* or otherwise used in whole or in part without prior written permission.

*

*****************************************************/

######################################################################

#

# Name:                 adm_countryedit.php

#

# Description:

#

# Version:                7.2

#

######################################################################

include('../db_connect.php');

include('../session_handler.inc');

include('../message.php');

require_once('../error.php');

require_once('../functions.php');

include('permission.php');



if (empty($_REQUEST['country_id'])) {

     header("Location: $CONST_LINK_ROOT/admin/adm_geography.php");

    exit;

}



if($_POST['act']) {

    $_status = (isset($_POST['gcn_status']))?1:0;

    $sql_query = "UPDATE geo_country SET gcn_name = '$_POST[gcn_name]', gcn_status = '$_status', gcn_order = '".$_POST['gcn_order']."', gcn_regionid = '0' WHERE gcn_countryid = '".$_POST['country_id']."'";

//print_r($sql_query);

    mysqli_query($globalMysqlConn,$sql_query);

     header("Location: $CONST_LINK_ROOT/admin/adm_geography.php");

    exit;

}



$query = "SELECT * FROM geo_country WHERE gcn_countryid = '".$_REQUEST['country_id']."'";

$res = mysqli_query($globalMysqlConn,$query);

$country = mysqli_fetch_object($res);



# retrieve the template

$area = 'member';



?>

<?=$skin->ShowHeader($area)?>

<table width="<?php print("$CONST_TABLE_WIDTH"); ?>" align="<?php print("$CONST_TABLE_ALIGN"); ?>" border="0" cellspacing="<?php print("$CONST_TABLE_CELLSPACING"); ?>" cellpadding="<?php print("$CONST_TABLE_CELLPADDING"); ?>">

  <tr>

    <td align="right">

      <?php require_once("$CONST_INCLUDE_ROOT/user_status.inc.php");?>

    </td>

  </tr>

  <tr>

    <td class="pageheader"><?php echo GEOGRAPHY_SECTION_NAME ?></td>

  </tr>

  <tr>

    <td><? include("admin_menu.inc.php");?></td>

  </tr>

    <tr>

        <td>

            <table border="0" width="100%" cellpadding="2" cellspacing="10">

                <form method="post" action="<?php echo $CONST_LINK_ROOT?>/admin/adm_countryedit.php">

                <input type="hidden" name="country_id" value="<?=$_REQUEST['country_id']?>">

                <input type="hidden" name="act" value="save">

                <tr>

                    <td colspan="3" align="left" valign="top" class="tdhead">&nbsp; </td>

                </tr>

                <tr align=center>

                    <th align=right>

                        <?=SEARCH_COUNTRY?>

                    </th>

                    <td align="left">

                        <input type="text" class="input" name="gcn_name" value="<?=$country->gcn_name?>">

                    </td>

                    <td></td>

                </tr>

                <tr align=center>

                    <th align=right>

                        <?=ADM_CORDER?>

                    </th>

                    <td align="left">

                        <input type="text" class="input" name="gcn_order" value="<?=$country->gcn_order?>">

                    </td>

                    <td></td>

                </tr>

                <tr align=center>

                    <th align=right>

                        <?=ADM_CSTATUS?>

                    </th>

                    <td align="left">

                        <input type="checkbox" name="gcn_status" value="1" <?php if($country->gcn_status) echo ' checked'; ?> class=inputf>

                    </td>

                    <td></td>

                </tr>

                <tr>

                    <td align="center"  colspan="3" class="tdfoot">

                        <input type=submit class=button name=SAVE value="<?=GENERAL_SAVE?>">

                        <input type=button class=button name=CANCEL value="Cancel" onClick="location.href='<?=$CONST_LINK_ROOT?>/admin/adm_geography.php'">

                    </td>

                </tr>

                </form>

           </table>



        </td>

    </tr>



</table>

<?php //mysqli_close( $link ); ?>

<?=$skin->ShowFooter($area)?>