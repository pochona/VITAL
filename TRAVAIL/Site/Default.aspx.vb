Partial Public Class PageDefault
    Inherits CwPageDefault

#Region "Définition de la page de démarrage de l'application"

    ''' <summary>
    ''' Définition de la page de démarage à utiliser dans la frame de droite
    ''' </summary>
    Public Overrides ReadOnly Property StartPage() As String
        Get
            Return "Welcome.aspx"
        End Get
    End Property

#End Region

End Class
