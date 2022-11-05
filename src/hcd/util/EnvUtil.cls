Class hcd.util.EnvUtil 
{

ClassMethod GetEnv(key As %String) As %String
{
    Set stream=##class(%Stream.FileCharacter).%New()
    
    Set sc=stream.LinkToFile("/var/opt/hcd.properties")
    
    Set result = "" 

    While 'stream.AtEnd {
    
        Set line=stream.ReadLine() 
        If $PIECE(line, "=", 1) = key {
            Set result = $PIECE(line, "=", 2) 
        }
    }

    return result
}

}
