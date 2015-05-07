Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()
        Dim lang As String = Request("Language1")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)

        End If
    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim money As Decimal =
        tb_salary.Text = String.Format("{0:c}", money)
    End Sub

    Protected Sub btn_clear_Click(sender As Object, e As EventArgs) Handles btn_clear.Click
        tb_name.Text = String.Empty
        tb_salary.Text = String.Empty
        rb_female.Text = String.Empty
        rb_male.Text = String.Empty


    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim name As String
        Dim salary As String
        Dim gender As String
        Dim graduation As String

        name = tb_name.Text
        salary = tb_salary.Text
        gender =
        graduation = tb_graddate.Text

        lbl_actualname.Text = name
        lbl_actualgender.Text = gender
        lbl_actualsalary.Text = salary
        lbl_actualgraddate.Text = graduation





    End Sub
End Class
