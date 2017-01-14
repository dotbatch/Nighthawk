<?php
//system engine:
require_once('admin/settings.php');


require_once('recaptchalib.php');

// Get a key from https://www.google.com/recaptcha/admin/create
$publickey = "6LdSa7oSAAAAACDwOLc_MnMBfFGJCLNltr93DvnM";
$privatekey = "6LdSa7oSAAAAAFhe8Q6ylJShdJMri99XFOz-Aef-";

# the response from reCAPTCHA
$resp = null;
# the error code from reCAPTCHA, if any
$error = null;


$_POST['option_type']="client_information_form";
$_POST['option_name']=$_POST['name'];

$_POST['completed']=false;

$_POST['option_value']=serialize($_POST);


// add content
if( isset($_POST['formSubmit']) ){
    # was there a reCAPTCHA response?
    if ($_POST["recaptcha_response_field"]) {
        $resp = recaptcha_check_answer ($privatekey,
                                        $_SERVER["REMOTE_ADDR"],
                                        $_POST["recaptcha_challenge_field"],
                                        $_POST["recaptcha_response_field"]);

        if ($resp->is_valid) {
           
        
            if(!$_POST['name']){
                $info="You Must Enter Client Name";
            }
            
            else
            if($CMS->insertSQL(OPTIONS,false,array('updateTime'=>gettime()))){
                
                
                /*$success=true;
                ob_start();
                $clientinfo=$CMS->selectRow('select * from '.OPTIONS.' where option_id='.mysql_insert_id());
                $clientinfo=unserialize($clientinfo['option_value']);
                $i=0;
                $mail=true;
                require_once('admin/viewinfo.php');
                $mailBody = nl2br(ob_get_contents());
                ob_clean();*/
                $success=true;
                $mailBody='Dear Admin<br /><br />
                A New Client Information form has been submitted to NTS Therap Website.<br /><br />
                
                To View The Form click on the following Link:<br /><br />
                <a href="'.urlpath('private',false).'manage-clientinfo.php?viewId='.mysql_insert_id().'">View Form</a><br /><br />
                
                Warmest Regards
                
                ';
                
                
                sendMail(
                        $address = array(
                            'to' =>$gSettings['formEmail'],
                            'from' => 'nts therapy <noreply@ntstherapy.com>',
                            'replyTo' => 'nts therapy <sales@ntstherapy.com>',
                            ),
                        $mailCont = array(
                            'body' => $mailBody,
                            'subject' => 'New Client information form submitted'
                            ),
                        $attachments = '',
                        $isHtml = true
                        );
                
            }
            else{
                $info = generateMSG( $CMS->getErrHTML(), true);
                $sendOld = true;
            }    
        } 
        
        else {    
        # set the error code so that we can display it
            $error = $resp->error;
        }
    }
    
    else{
        $info = "Please Enter the two words mentioned in the captcha!";
        $sendOld = true;
    }    
    
}



?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="Expires" content="Fri, Jan 01 1900 00:00:00 GMT">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Lang" content="en">
<meta name="author" content="">
<meta http-equiv="Reply-to" content="@.com">
<meta name="revisit-after" content="15 days">
<title>Client Information</title>
<style type="text/css">
body{
    text-align: center;
}
.box{
    width:940px;
    margin: 0 auto;
}
td{
	padding: 10px 10px 10px;
}
label{
    width: 150px;
    float: left;
}
.box2{
    text-align: left;
    
}
.border{
    border:1px solid;
    border-right: none;
    border-bottom : none;
    
}
.border td,.border th{
    border-right: 1px solid;
    border-bottom : 1px solid;
    
}
</style>
<script type="text/javascript">
 var RecaptchaOptions = {
    theme : 'clean'
 };
 </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" bgcolor="#FFFF00"><strong>NOTE:</strong> Prospective patients, please make sure to fill out the <a href="online-form.php">online referral</a> form first.</td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td align="right" bgcolor="#99CCFF">Prefer to print out form? <a href="docs/NTS%20Client%20Information.pdf">Click here Printable Version</a></td>
  </tr>
</table>
<?php 
if($success):
    echo '<br /><br /><h2 style="color:green">Thank you for taking the time to fill out this client information form. <br />This information will greatly assist the therapist working with the client in meeting his/her needs. We will contact you within 24 hours.</h2><br /><br />';
else:

?>

<h1>NEURODEVELOPMENTAL THERAPY SERVICES, INC.</h1>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="10" class="middle">
  <tr>
    <td width="462"><p><strong>Northwest (Clay & Beltway)</strong><br>4423 Shadowdale Lane<br>
Houston, Texas, 77041-8718<br>
Ph: 713.466.6872<br>
Fax: 713.466.9547 
    </p></td>
    <td width="462"><strong>West (Katy)</strong><br>1935 Avenue C</span><br>
Katy, TX 77493    <br>
Ph: 281.392.4221<br>
Fax: 281.392.4225</td>
  </tr>
</table>
<?php 
if($info)
    echo '<h2 style="color:red">'.$info.'</h2><br /><br />';

?>

<h2>Client Information</h2>
<form action="" method="post">

<table class="box">
    <tr>
        <td><label>Client Name: </label><input type="text" name="name"></td>
        <td><label>Birthday: </label><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td><label>Telephone: </label><input type="text" name="clientform[]"></td>
        <td><label>Alternate Phone: </label><input type="text" name="clientform[]"></td>
    </tr>
    <tr>
        <td><label>Email: </label><input type="text" name="clientform[]"></td>
        <td><label>Cell Phone: </label><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td><label>Address: </label><input type="text" name="clientform1[]"></td>
        <td><label>City: </label><input type="text" name="clientform1[]"></td>
        
    </tr>
    <tr>
        <td><label>State: </label><input type="text" name="clientform1[]"></td>
        <td><label>Zip: </label><input type="text" name="clientform1[]"></td>
        
    </tr>
    <tr>
        <td><label>Location Interested In: </label>
            <select name="clientform1[]">
                <option value="Northwest">Northwest</option>
                <option value="West">West</option>
            </select>
            
        </td>
        <td></td>
        
    </tr>
</table>
<br /><br />
<strong>Please complete and return to NTS prior to the client's initial evaluation. Thank you.</strong>

<br /><br />
<div class="box box2">
<strong>I. Reasons for referral:</strong><br /><br />
In your own words, describe the client's need for services.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
Please describe any circumstances surrounding the onset of this problem. (illness, from birth...)<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
<strong>II. Parent Concerns: <br /></strong><br />
What do you consider to be the two or three most important issues associated with the client's needs?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
What goals would you like to see the client achieve in treatment?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
Are you willing to participate in therapy sessions when the therapist feels it is appropriate?-AND- are you willing to use therapy strategies at home when appropriate? If no, why?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
Has the client previously received therapy? If yes, please list what type of therapy, where and how often they received services?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
Is the client currently receiving any other specialized instruction or services? If yes, where and how often? (i.e. cranial sacral, applied behavior approach, horseback riding)<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
<strong>III. Birth History: <br /></strong><br />
Please describe any difficulties associated with pregnancy or birth using the chart and lines below. Include any diagnoses made at birth.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea>
<br /><br />
Please describe any difficulties associated with pregnancy or birth using the chart and lines below. Include any diagnoses made at birth.<br />


<table class="box">
    <tr>
        <td><label>Premature: </label><input type="checkbox" name="clientcheck1"></td>
        <td><label>On time: </label><input type="checkbox" name="clientcheck2"></td>
        <td><label>Over due: </label><input type="checkbox" name="clientcheck3"></td>
        
    </tr>
    <tr>
        <td><label>Vaginal: </label><input type="checkbox" name="clientcheck4"></td>
        <td><label>C-Section: </label><input type="checkbox" name="clientcheck5"></td>
        <td><label>NICU (how long): </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        
    </tr>
    <tr>
        <td><label>Labor induced: </label><input type="checkbox" name="clientcheck7"></td>
        <td><label>Labor lasted (hrs.): </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        <td><label>Multiple birth: </label><input type="checkbox" name="clientcheck9"></td>
        
    </tr>
    <tr>
        <td><label>Birth weight: (lbs. oz.) </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        <td><label>Birth length: </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        <td><label>Apgar score: </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        
    </tr>
    <tr>
        <td><label>Jaundice: </label><input type="checkbox" name="clientcheck13"></td>
        <td><label>Incubator: </label><input type="checkbox" name="clientcheck14"></td>
        <td><label>Intubated (how long): </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        
    </tr>
    <tr>
        <td><label>Feeding difficulty: </label><input type="checkbox" name="clientcheck16"></td>
        <td><label>Reflux: </label><input type="checkbox" name="clientcheck17"></td>
        <td><label>Breast or bottle-fed: </label><input type="text" name="clientform[]" style="width: 50px;"></td>
        
    </tr>
    
</table>


<br /><br />
<strong>IV. Medical History:</strong><br /><br />
Has the client had any serious illnesses or accidents? If yes, please describe and include any hospitalizations and surgeries.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Is the client presently taking medications? Please list medication and reason for administration.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client have any allergies? If yes, please describe.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Is the client on any special diet for nutritional or allergic reasons?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Has the client ever had a seizure? If yes, please describe and list medications and techniques used to control seizures.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client have any vision problems? If yes, please describe the nature and management of the impairment.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Has the client had any ear infections? If yes, how many?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client have tubes in his ears? If yes, for how long? When was the last time the tubes were checked?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />

Does the client have any hearing loss? If yes, in one ear or both? What degree of loss is it and what frequencies does it cover? Does the client wear hearing aids or have other devices to help him hear?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />

Has the client had any nose, throat or palate disorders (i.e.: clefts), procedures (i.e.: video fluoroscopy) or operations (i.e.: tonsils and adenoids removed)? Please describe below including dates.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />

Has the client ever had a modified barium swallow study, an upper GI, a pH probe or a gastric motility study? If yes, please give the reasons why, and when the procedure was done, and any results of the procedure.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />

<strong>V. Developmental History: </strong><br />
Estimate how many words the client speaks, or tell us if they are using complete sentences.<br /><br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />

If they are not using sentences, please give examples of the words they use.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />



<table class="box border">
    <tr>
        <th>Developmental Skills</th>
        <th>Age</th>
        <th>Remarks</th>
        
    </tr>
    <tr>
        <td colspan="3">1. At what age did the client first accomplish the following:</td>
        
    </tr>
    <tr>
        <td>Sat alone</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Crawled</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Walked</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Babbled</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Spoke first word</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Combined 2-3 words</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Began eating pureed baby food</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Finger fed</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Self-fed (Utensil)</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Used a sippy cup</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Used an un-lidded cup</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Used a straw</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Bladder control</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>Bowel control</td>
        <td><input type="text" name="clientform[]"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    
    
    
    
</table>

<table class="box border">
    <tr>
        <th>Motor Skills</th>
        <th>Yes</th>
        <th>No</th>
        <th>Sometimes</th>
        <th>Remarks</th>
        
    </tr>
    <tr>
        <td colspan="5">2. Compared to others of the same age and sex, does the client seem to have difficulty:</td>
        
    </tr>
    <tr>
        <td>a. manipulating small objects (i.e., buttons, knobs of toys)</td>
        <td><input type="checkbox" name="clientcheck19"></td>
        <td><input type="checkbox" name="clientcheck20"></td>
        <td><input type="checkbox" name="clientcheck21"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>b. using pencils, crayons, scissors, paint-brushes</td>
        <td><input type="checkbox" name="clientcheck22"></td>
        <td><input type="checkbox" name="clientcheck23"></td>
        <td><input type="checkbox" name="clientcheck24"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>c. catching a ball</td>
        <td><input type="checkbox" name="clientcheck25"></td>
        <td><input type="checkbox" name="clientcheck26"></td>
        <td><input type="checkbox" name="clientcheck27"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>d. throwing a ball</td>
        <td><input type="checkbox" name="clientcheck28"></td>
        <td><input type="checkbox" name="clientcheck29"></td>
        <td><input type="checkbox" name="clientcheck30"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>e. riding a tricycle (if under age 6)</td>
        <td><input type="checkbox" name="clientcheck31"></td>
        <td><input type="checkbox" name="clientcheck32"></td>
        <td><input type="checkbox" name="clientcheck33"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>f. riding a bicycle (if over age 6)</td>
        <td><input type="checkbox" name="clientcheck34"></td>
        <td><input type="checkbox" name="clientcheck35"></td>
        <td><input type="checkbox" name="clientcheck36"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>g. pumping self on the swing?</td>
        <td><input type="checkbox" name="clientcheck37"></td>
        <td><input type="checkbox" name="clientcheck38"></td>
        <td><input type="checkbox" name="clientcheck39"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>h. kicking a ball</td>
        <td><input type="checkbox" name="clientcheck40"></td>
        <td><input type="checkbox" name="clientcheck41"></td>
        <td><input type="checkbox" name="clientcheck42"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td colspan="5">3. Compared with others, does your client more often seem to:</td>
        
    </tr>
    <tr>
        <td>a. prefer sedentary activities (i.e., watching TV)</td>
        <td><input type="checkbox" name="clientcheck46"></td>
        <td><input type="checkbox" name="clientcheck47"></td>
        <td><input type="checkbox" name="clientcheck48"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>b. prefer fine motor activities (i.e., coloring, building, with blocks)</td>
        <td><input type="checkbox" name="clientcheck49"></td>
        <td><input type="checkbox" name="clientcheck50"></td>
        <td><input type="checkbox" name="clientcheck51"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>c. prefer gross motor activities (i.e., swinging, running)</td>
        <td><input type="checkbox" name="clientcheck52"></td>
        <td><input type="checkbox" name="clientcheck53"></td>
        <td><input type="checkbox" name="clientcheck54"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>d. trip over or bump into things</td>
        <td><input type="checkbox" name="clientcheck55"></td>
        <td><input type="checkbox" name="clientcheck56"></td>
        <td><input type="checkbox" name="clientcheck57"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>e. prefer indoor activities</td>
        <td><input type="checkbox" name="clientcheck58"></td>
        <td><input type="checkbox" name="clientcheck59"></td>
        <td><input type="checkbox" name="clientcheck60"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>f. prefer outdoor activities</td>
        <td><input type="checkbox" name="clientcheck61"></td>
        <td><input type="checkbox" name="clientcheck62"></td>
        <td><input type="checkbox" name="clientcheck63"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    
    
    
    
</table>
<br /><br />
Does the client have any oral motor difficulties including feeding, speech, or language?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client prefer certain foods or liquids including tastes, textures or temperatures?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client have difficulty with sucking, chewing, swallowing, using utensils, choking, reflux, tooth grinding or drooling? Include if they swallow foods whole or incompletely.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
What languages are spoken to the child? Home<input type="text" name="clientform[]">School<input type="text" name="clientform[]">
Does the client have similar problems communicating in the other language(s)?<input type="text" name="clientform[]">
If yes, please describe<br /><br /><textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />



Please describe any equipment the client is currently using for mobility, self-care, vision, hearing, communication, positioning or splinting.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client's home have any stairs?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Is there any information regarding the client's family history that is important to understand their current therapy needs?<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
<strong>VI. Social History: </strong><br />
<br />
Client's current grade level:<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Does the client experience any difficulty in preschool/school? Please describe.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />
Please list any other family members or caregivers (parent, sibling, grandparent, nanny) who routinely look after the client. Include ages of any siblings.<br />
<textarea name="clientform[]" cols="60" rows="5"></textarea><br /><br />


<table class="box border">
    <tr>
        <th>Social Adjustment</th>
        <th>Yes</th>
        <th>No</th>
        <th>Sometimes</th>
        <th>Remarks</th>
        
    </tr>
    <tr>
        <td colspan="5">1. Compared with others of the same age, does the client:</td>
        
    </tr>
    <tr>
        <td>a. find it hard to make friends among his peers</td>
        <td><input type="checkbox" name="clientcheck64"></td>
        <td><input type="checkbox" name="clientcheck65"></td>
        <td><input type="checkbox" name="clientcheck66"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>b. prefer the company of adults to that of peers</td>
        <td><input type="checkbox" name="clientcheck67"></td>
        <td><input type="checkbox" name="clientcheck68"></td>
        <td><input type="checkbox" name="clientcheck69"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>c. prefer to play with younger children rather than peers</td>
        <td><input type="checkbox" name="clientcheck70"></td>
        <td><input type="checkbox" name="clientcheck71"></td>
        <td><input type="checkbox" name="clientcheck72"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>d. prefer to play alone</td>
        <td><input type="checkbox" name="clientcheck73"></td>
        <td><input type="checkbox" name="clientcheck74"></td>
        <td><input type="checkbox" name="clientcheck75"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>e. frequently get discouraged easily, or express feelings of failure or frustration</td>
        <td><input type="checkbox" name="clientcheck76"></td>
        <td><input type="checkbox" name="clientcheck77"></td>
        <td><input type="checkbox" name="clientcheck78"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>f. seem to have less fun when playing</td>
        <td><input type="checkbox" name="clientcheck79"></td>
        <td><input type="checkbox" name="clientcheck80"></td>
        <td><input type="checkbox" name="clientcheck81"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>g. frequently express feelings of anger or frustration by hitting or kicking rather than with word</td>
        <td><input type="checkbox" name="clientcheck82"></td>
        <td><input type="checkbox" name="clientcheck83"></td>
        <td><input type="checkbox" name="clientcheck84"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>h. frequently throw temper tantrums</td>
        <td><input type="checkbox" name="clientcheck85"></td>
        <td><input type="checkbox" name="clientcheck86"></td>
        <td><input type="checkbox" name="clientcheck87"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <th>School Performance</th>
        <th>Yes</th>
        <th>No</th>
        <th>Sometimes</th>
        <th>Remarks</th>
        
    </tr>
    <tr>
        <td colspan="5">2. Compared with others of the same age, does the client:</td>
        
    </tr>
    <tr>
        <td>a. have poor handwriting</td>
        <td><input type="checkbox" name="clientcheck88"></td>
        <td><input type="checkbox" name="clientcheck89"></td>
        <td><input type="checkbox" name="clientcheck90"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>b. make reversals of letters or numbers when writing or copying (if older than age 7)</td>
        <td><input type="checkbox" name="clientcheck91"></td>
        <td><input type="checkbox" name="clientcheck92"></td>
        <td><input type="checkbox" name="clientcheck93"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>c. perform the same tasks with either hand (i.e., writing, eating)</td>
        <td><input type="checkbox" name="clientcheck94"></td>
        <td><input type="checkbox" name="clientcheck95"></td>
        <td><input type="checkbox" name="clientcheck96"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>d. seem to tire quickly, have poor posture, or need to prop his or her head while reading or writing at a desk</td>
        <td><input type="checkbox" name="clientcheck97"></td>
        <td><input type="checkbox" name="clientcheck98"></td>
        <td><input type="checkbox" name="clientcheck99"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>e. find gym class or sports to be a particular difficult or frustrating experience</td>
        <td><input type="checkbox" name="clientcheck100"></td>
        <td><input type="checkbox" name="clientcheck101"></td>
        <td><input type="checkbox" name="clientcheck102"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    <tr>
        <td>f. tend to clutter work areas excessively</td>
        <td><input type="checkbox" name="clientcheck103"></td>
        <td><input type="checkbox" name="clientcheck104"></td>
        <td><input type="checkbox" name="clientcheck105"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    <tr>
        <td>g. have excessive difficult switching from active to quiet activities (i.e., playground to seatwork)</td>
        <td><input type="checkbox" name="clientcheck106"></td>
        <td><input type="checkbox" name="clientcheck107"></td>
        <td><input type="checkbox" name="clientcheck108"></td>
        <td><input type="text" name="clientform[]"></td>
        
    </tr>
    
    
    
    
    
</table>
</div>
<div class="box">
    <br /><br />
        To finalize your form, type each of the following words into the box and click submit<br /><br />
    <?php echo recaptcha_get_html($publickey, $error); ?>
    <br /><br />
    <input type="submit" name="formSubmit" value="SUBMIT FORM">
</div>

</form>
<?php

endif

?>

  
</body>
</html>
