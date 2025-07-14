#tag Class
Protected Class Sort

	#tag Property, Flags = &h0
		#tag Note
			Name of the property by which the result is sorted
		#tag EndNote
		Escapedproperty As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Sort direction (ASC or DESC)
		#tag EndNote
		direction As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = DirectionEnum, Type = Integer, Flags = &h0
        
        Asc
        Desc
        
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function DirectionEnumToString(value As DirectionEnum) As String
		  Select Case value
		    
		    Case DirectionEnum.Asc
		      Return "ASC"
		    Case DirectionEnum.Desc
		      Return "DESC"
		    
		  End Select
		  Return ""
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Escapedproperty"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


