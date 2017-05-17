'Imports VITAL.BO.VITAL
'Imports VITAL.BO

''' <summary>
''' Application principale.
''' </summary>
Public Class MainApplication
    Inherits WebApplication

#Region "Initialisation de la base de données"

    ''' <summary>
    ''' Méthode permettant de charger la liste des bases de données qui
    ''' vont être utilisées par l'application. La première base de donnée
    ''' étant considérée comme la base de donnée par défaut
    ''' </summary>
    ''' <param name="p_o_list"></param>
    Protected Overrides Sub InitDatabases(ByVal p_o_list As Corail.Core.DataBaseList)
        BO.Main.InitDatabases(p_o_list)
    End Sub

#End Region
	
#Region "Authentification de l'utilisateur"

    ''' <summary>
    ''' Chargement des informations (Mot de passe et groupes de l'utilisateur).
    ''' </summary>
    ''' <param name="p_o_identity">Identité de l'utilisateur.</param>
    Protected Overrides Sub LoadUserIdentity(p_o_identity As UserIdentity)
        'On vérifie l'identifiant de l'utilisateur
        If p_o_identity.Login = "a" Then
            'On récupère le mot de passe précédement enregistré
            'TODO: Remplacer par "SetHashedPassword"
            p_o_identity.SetUnsafePassword("a")
            'On définit le profil à utiliser
            p_o_identity.AddGroup("ADM")
        End If
    End Sub

#End Region
	
#Region "Chargement du menu et de la barre d'outils"
	
    ''' <summary>
    ''' Chargement du menu principal de l'application.
    ''' </summary>
    ''' <param name="Menu">Menu principal de l'application.</param>
    ''' <param name="IsAuthenticated">Indique si l'utilisateur est actuellement connecté.</param>
    Public Overrides Sub LoadMenu(Menu As ApplicationMenu, IsAuthenticated As Boolean)
        With Menu
            .Add("Exemple 1")
            .AddSub("Exemple 2")
            .AddSubSub("Désirade", "http://www.desirade.fr/")
#If DEBUG Then
            ' Menu pour le développeur
            .AddDebugMenu()
#End If
        End With
    End Sub

	    ''' <summary>
    ''' Chargement de la barre d'outils principale de l'application.
    ''' </summary>
    ''' <param name="ToolBar">Barre d'outils principale de l'application.</param>
    ''' <param name="IsAuthenticated">Indique si l'utilisateur est actuellement connecté.</param>
    Public Overrides Sub LoadToolbar(ToolBar As ApplicationToolbar, IsAuthenticated As Boolean)
        With ToolBar
            ' Déconnexion
            .AddDisconnect()
			' A propos
            .AddAbout()
            ' Thèmes
            .AddPalette()
        End With
    End Sub
	
#End Region

End Class
