Namespace VITAL

    <Serializable()>
    Partial Public MustInherit Class Schema

#Region "Initialisation"

        ''' <summary>
        ''' On conserve la référence vers la base de données.
        ''' </summary>
        ''' <param name="p_o_db">Base de données.</param><returns></returns>
        Friend Shared Function SetDB(p_o_db As Corail.Core.DataBase) As Corail.Core.DataBase
            Throw New NotImplementedException
        End Function

#End Region

    End Class

End Namespace