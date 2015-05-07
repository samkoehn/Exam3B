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


    Protected Sub btn_clear_Click(sender As Object, e As EventArgs) Handles btn_clear.Click
        tb_name.Text = String.Empty
        tb_salary.Text = String.Empty
        rb_female.Text = String.Empty
        rb_male.Text = String.Empty


    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim name As String
        Dim graduation As Date
        Dim money As Decimal = tb_salary.Text = String.Format("{0:c}", money)

        name = tb_name.Text
        graduation = cln_graduate.SelectedDate


        lbl_actualname.Text = name
        lbl_actualsalary.Text = money
        lbl_graduate.Text = graduation

        If rb_female.Checked = True Then lbl_gender.Text = "Ms."
        If rb_male.Checked = True Then lbl_gender.Text = "Mr."





    End Sub
End Class
