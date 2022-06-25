Class hcd.util.DateUtils
{

/// Convert datetime to web format 
ClassMethod ConvertDatetime(original As %String) As %String
{
    Set convertedDatetime = $zdatetimeh(original,4) 
    Set result = $zdatetime(convertedDatetime,3)
    Set result = $TRANSLATE(result," ", "T")
    Return result
}

}
