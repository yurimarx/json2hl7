Class hcd.util.DateUtils
{

/// Convert datetime to web format 
ClassMethod ConvertDatetime(original As %String) As %String
{
 
    
    Set result = ""
    
    Try {
        If original '= "" {
            Set convertedDatetime = $zdatetimeh(original,4) 
            Set result = $zdatetime(convertedDatetime,3)
            Set result = $TRANSLATE(result," ", "T")    
        }
    } Catch Err {
        Set result = "" 
    }
    
    Return result
}

ClassMethod ConvertDDMMAAAA(value As %String) As %String
{
    Try {
        Set temp = $zdatetimeh(value,4)
        Set resultado = $zdatetime(temp,3,1)
        Return resultado
    } catch Err {
        Return ""
    }
}

ClassMethod GetMonthPeriods(InitialYear As %Integer, EndYear As %Integer) As %DynamicArray
{
    
    set result = []
    For CurrentYear = InitialYear:1:EndYear {
        For CurrentMonth = 1:1:12 {
            set item = {}
            If CurrentMonth < 10 {
                Set CurrentMonthStr = "0"_CurrentMonth
            } Else {
                Set CurrentMonthStr = ""_CurrentMonth
            }
            set item.StartDate = CurrentYear_"-"_CurrentMonthStr_"-01%2000!00!00"
            Set NextMonth = CurrentMonth + 1
            If NextMonth = 13 {
                set item.EndDate = CurrentYear_"-12-31%2023!59!59"
            } Else {
                Set NextDate = $SYSTEM.SQL.Functions.TODATE(CurrentYear_"-"_NextMonth_"-01","YYY-MM-DD")
                Set NextDate = $INCREMENT(NextDate,-1)
                set item.EndDate = $ZDate(NextDate,3)_"%2023!59!59"
            }
            
            Do result.%Push(item)
        }
    }

    Return result
}

ClassMethod ConvertWebDatetime(datetime As %String) As %TimeStamp
{
    If (datetime = "" || datetime = "null") {
        Return ""
    } Else {
        Set tempDate = $TRANSLATE(datetime, "T", " ")
        Try {
            Set result = $zdatetimeh(tempDate,3,1)
            Return result
        } Catch Err {
            Return ""
        }
    }
}

ClassMethod TestSql()
{
    Set row = ##class(hcd.jsonvacivida.Vacivida).%OpenId(2005)
    Write ..GetStrWebDatetime(row.DataNascimento)
}

ClassMethod GetStrWebDatetime(value As %TimeStamp) As %String
{
    If (value = "" || value = "null") {
        Return ""
    } Else {
        Try {
            Set result = $zdatetime(value,4,1)
            Set result = $TRANSLATE(value, " ", "T")
            Return result
        } Catch Err {
            Return ""
        }
    }
}

/// Remove UTC
ClassMethod RemoveUTC(date As %String) As %String
{
    Set result = ""

    Try {
        If date '= "" {
            If $FIND(date, "Z[UTC]") > 0 {
                Set result = $REPLACE(date, "Z[UTC]", "")
                Set result = $REPLACE(result, " ", "T")
            } Else {
                Set result = $REPLACE(date, " ", "T")
            }
        }
    } Catch Err {
        Set result = ""
    }

    Return result
}

}
