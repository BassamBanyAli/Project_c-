using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["Id"];
                if (!string.IsNullOrEmpty(id))
                {
                    BindGridView(id); // Pass the id to BindGridView
                     // Placeholder to show the id
                }
            }
        }

        protected void BindGridView(string id)
        {
            string filePath = Server.MapPath($"~/Question_id_{id}.txt");

            if (File.Exists(filePath))
            {
                var questions = LoadQuestionsFromFile(filePath);
                questionGridView.DataSource = questions;
                questionGridView.DataBind();
            }
            else
            {
                Response.Write("File not found."); // Placeholder for file not found message
            }
        }

        protected List<Question> LoadQuestionsFromFile(string filePath)
        {
            var questions = new List<Question>();

            try
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        var data = line.Split(',');

                        if (data.Length == 2)
                        {
                            questions.Add(new Question
                            {
                                QuestionText = data[0].Trim(),
                                AnswerText = data[1].Trim()
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error loading file: {ex.Message}");
            }

            return questions;
        }
        protected void btnDownload_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("content-disposition", "attachment;filename=GridViewData.csv");
                Response.Charset = "";
                Response.ContentType = "application/csv"; // Change ContentType to CSV

                string id = Request.QueryString["Id"];
                var questions = LoadQuestionsFromFile(Server.MapPath($"~/Question_id_{id}.txt"));

                StringBuilder sb = new StringBuilder();

                // Append headers
                sb.AppendLine("Question,Answer");

                // Append data rows
                foreach (var question in questions)
                {
                    sb.AppendLine($"{question.QuestionText},{question.AnswerText}");
                }

                // Write the StringBuilder content to the Response
                Response.Output.Write(sb.ToString());

                // Flush and end the response
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write($"Error downloading file: {ex.Message}");
            }
        }


        protected class Question
        {
            public string QuestionText { get; set; }
            public string AnswerText { get; set; }
        }
    }
}
