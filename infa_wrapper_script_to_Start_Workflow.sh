#---------------------------------------------------
PM_HOME =< INFA PATH>
inf_server =< INFA SERVER NAME- DEV/UAT/PRD>
inf_domain =< INFA DOMAIN>
wf_folder =< PERSONAL_PROMO>
inf_user =< CVS_PAVANI>
inf_pwd =< password>
wf_name =< wf_promo_1839>

#
# Start the workflow
#

$PM_HOME/pmcmd startworkflow -sv <$inf_server> -d <$inf_domain> -u <$inf_user> -p <$inf_pwd> -f
<$wf_folder> -wait <$wf_name>

#---------------------------------------------------
# Fetching workflow status
#---------------------------------------------------

$wf_name.Status=$?

#---------------------------------------------------
# Echo status message as per workflow status
#---------------------------------------------------

if [ $wf_name.Status -eq 0 ] then
echo "Workflow Execution Successful"
elif
echo
"Workflow Execution Failed"
fi