using System;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string techFilePath;
        private string studentFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            techFilePath = Server.MapPath("~/tech.txt");
            studentFilePath = Server.MapPath("~/technology_students.txt");

            if (!IsPostBack)
            {
                cardscontainer123.Controls.Clear();
                LoadDataAndCreateCards();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SaveCheckboxStates();
            cardscontainer123.Controls.Clear();
            LoadDataAndCreateCards();
        }

        private void SaveCheckboxStates()
        {
            using (StreamWriter writer = new StreamWriter(techFilePath))
            {
                if (ch1.Checked)
                {
                    writer.WriteLine("C#,https://www.learn-csharp.com,csharp.png,~App_Data/Students_C#.txt");
                    WriteToTechnologyStudentsFile("C#");
                }
                if (ch2.Checked)
                {
                    writer.WriteLine("C++,https://www.learn-cpp.com,c.png,https://www.w3schools.com/");
                    WriteToTechnologyStudentsFile("C++");
                }
                if (ch3.Checked)
                {
                    writer.WriteLine("PHP,https://www.learn-php.com,php.png,https://www.w3schools.com/");
                    WriteToTechnologyStudentsFile("PHP");
                }
                if (ch4.Checked)
                {
                    writer.WriteLine("Node Js,https://www.learn-nodejs.com,js.png,https://www.w3schools.com/");
                    WriteToTechnologyStudentsFile("Node Js");
                }
            }
        }

        private void WriteToTechnologyStudentsFile(string techName)
        {
            // Read the existing file contents
            var existingTechs = File.Exists(studentFilePath) ? File.ReadAllLines(studentFilePath) : new string[0];

            // Check if the technology name already exists
            if (Array.IndexOf(existingTechs, techName) == -1)
            {
                // If not, append the new technology name
                using (StreamWriter writer2 = new StreamWriter(studentFilePath, true))
                {
                    writer2.WriteLine(techName);
                }
            }
        }

        private void LoadDataAndCreateCards()
        {
            if (File.Exists(techFilePath))
            {
                using (StreamReader reader = new StreamReader(techFilePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        var parts = line.Split(',');
                        if (parts.Length == 4)
                        {
                            AppendCard(parts[0], parts[1], parts[2], parts[3]);
                        }
                    }
                }
            }
        }

        private void AppendCard(string techName, string url, string imageUrl, string urlAddStudent)
        {
            var card = new Panel { CssClass = "card1" };

            var image = new Image { ImageUrl = "~/images/" + imageUrl, AlternateText = techName, CssClass = "tech-image" };
            card.Controls.Add(image);

            var label = new Label { Text = techName, CssClass = "tech-name" };
            card.Controls.Add(label);

            // Button for adding new student
            var btnAddStudent = new Button
            {
                Text = "Add Student",
                CssClass = "btn btn-primary"
            };
            btnAddStudent.Click += (s, e) => AddStudent_Click(techName);
            card.Controls.Add(btnAddStudent);

            // Button for adding question
            var btnAddQuestion = new Button
            {
                Text = "Add Question",
                CssClass = "btn btn-secondary",
                OnClientClick = $"window.open('{url}', '_blank'); return false;"
            };
            card.Controls.Add(btnAddQuestion);

            cardscontainer123.Controls.Add(card);
        }

        private void AddStudent_Click(string techName)
        {
            // Redirect to another page with query string
            Response.Redirect($"AnotherPage.aspx?TechName={HttpUtility.UrlEncode(techName)}");
        }
    }
}
