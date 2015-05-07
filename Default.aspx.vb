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

        lbl_h1.Visible = True
        lbl_h2.Visible = True

        lbl_myNameIs.Visible = True
        tb_name.Visible = True

        lbl_gender.Visible = True
        rb_female.Visible = True
        rb_male.Visible = True

        lbl_graduate.Visible = True
        cln_graduate.Visible = True

        lbl_salary.Visible = True
        tb_salary.Visible = True

        lbl_hello.Visible = False
        lbl_actualname.Visible = False
        lbl_actualgender.Visible = False

        lbl_response1.Visible = False
        lbl_response2.Visible = False
        lbl_actualsalary.Visible = False
        lbl_graddate.Visible = False

        btn_clear.Visible = True
        btn_submit.Visible = True
        lbl_chooseLang.Visible = True
        Language1.Visible = True


    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim name As String
        Dim graduation As Date
        Dim money As Decimal = tb_salary.Text = String.Format("{0:c}", money)

        name = tb_name.Text
        graduation = cln_graduate.SelectedDate


        lbl_actualname.Text = name
        lbl_actualsalary.Text = money
        lbl_graddate.Text = graduation

        If rb_female.Checked = True Then lbl_actualgender.Text = "Ms."
        If rb_male.Checked = True Then lbl_actualgender.Text = "Mr."

        lbl_h1.Visible = True
        lbl_h2.Visible = True

        lbl_myNameIs.Visible = False
        tb_name.Visible = False

        lbl_gender.Visible = False
        rb_female.Visible = False
        rb_male.Visible = False

        lbl_graduate.Visible = False
        cln_graduate.Visible = True

        lbl_salary.Visible = False
        tb_salary.Visible = False

        lbl_hello.Visible = True
        lbl_actualname.Visible = True
        lbl_actualgender.Visible = True

        lbl_response1.Visible = True
        lbl_response2.Visible = True
        lbl_actualsalary.Visible = True
        lbl_graddate.Visible = True

        btn_clear.Visible = True
        btn_submit.Visible = True
        lbl_chooseLang.Visible = True
        Language1.Visible = True



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
        cln_graduate.Visible = True

        lbl_salary.Visible = True
        tb_salary.Visible = True



        lbl_hello.Visible = False
        lbl_actualname.Visible = False
        lbl_actualgender.Visible = False

        lbl_response1.Visible = False
        lbl_response2.Visible = False
        lbl_actualsalary.Visible = False
        lbl_graddate.Visible = False

        btn_clear.Visible = True
        btn_submit.Visible = True
        lbl_chooseLang.Visible = True
        Language1.Visible = True



    End Sub

    Protected Sub cln_graduate_SelectionChanged(sender As Object, e As EventArgs) Handles cln_graduate.SelectionChanged
        lbl_actualgender.Visible = False
    End Sub
End Class
