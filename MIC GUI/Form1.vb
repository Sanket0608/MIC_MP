Public Class Form1
    Public Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If TextBox1.Text = "A" Or TextBox1.Text = "a" Or TextBox1.Text = "E" Or TextBox1.Text = "e" Or TextBox1.Text = "I" Or TextBox1.Text = "i" Or TextBox1.Text = "O" Or TextBox1.Text = "o" Or TextBox1.Text = "U" Or TextBox1.Text = "u" Then

            ListBox1.Items.Add(TextBox1.Text)
            TextBox1.Clear()

        Else
            ListBox2.Items.Add(TextBox1.Text)
            TextBox1.Clear()

        End If
    End Sub
End Class
