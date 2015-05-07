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

        lbl_actualgender.Visible = False
        lbl_actualname.Visible = False
        lbl_actualsalary.Visible = False
        lbl_gender.Visible = False
        lbl_response1.Visible = False
        lbl_response2.Visible = False



    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim name As String
        Dim graduation As Date
        Dim money As Decimal = tb_salary.Text = String.Format("{0:c}", money)

        name = tb_name.Text
        graduation = cln_graduate.SelectedDate


        lbl_actualname.Text = "Hello" & name
        lbl_actualsalary.Text = money
        lbl_graddate.Text = graduation

        If rb_female.Checked = True Then lbl_gender.Text = "Ms."
        If rb_male.Checked = True Then lbl_gender.Text = "Hello" & "Mr."




    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_h1.Visible = True
        lbl_h2.Visible = True

        lbl_myNameIs.Visible = True
        tb_name.Visible = True

        lbl_gender.Visible = True
        rb_female.Visible = True
        rb_male.Visible = True

        lbl_graduate.Visible = True
        tb_graddate.Visible = True
        cln_graduate.Visible = True

        lbl_salary.Visible = True
        tb_salary.Visible = True

        lbl_actualgender.Visible = False

        lbl_actualsalary.Visible = False
        lbl_hello.Visible = True
        lbl_actualname.Visible = False

        lbl_response1.Visible = False
        lbl_response2.Visible = False


        lbl_gender.Visible = True
        lbl_graddate.Visible = True









        btn_clear.Visible = True
        btn_submit.Visible = True
        lbl_chooseLang.Visible = True
        Language1.Visible = True



    End Sub
End Class
