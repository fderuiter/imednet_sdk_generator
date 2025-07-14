#tag Class
Protected Class VariableList

	#tag Property, Flags = &h0
		metadata As OpenAPIClient.Models.Metadata
	#tag EndProperty


	#tag Property, Flags = &h0
		pagination As OpenAPIClient.Models.Pagination
	#tag EndProperty


	#tag Property, Flags = &h0
		data() As OpenAPIClient.Models.Variable
	#tag EndProperty





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
			Name="metadata"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Metadata"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pagination"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Pagination"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Variable"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


