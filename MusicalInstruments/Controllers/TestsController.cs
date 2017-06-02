using MusicInstruments;
using System.Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MusicalInstruments.Models;

namespace MusicalInstruments.Controllers
{
    public class TestsController : Controller
    {
        private IMusicInstrumentsTestDbContext context = new MusicInstrumentsTestEntities();

        [HttpGet]
        public ActionResult StringsTest()
        {
            var questions = this.GetQuestions(1);
            return View(questions);
        }

        [HttpGet]
        public ActionResult BrassTest()
        {
            var questions = this.GetQuestions(2);
            return View(questions);
        }

        [HttpGet]
        public ActionResult PercussionTest()
        {
            var questions = this.GetQuestions(3);
            return View(questions);
        }

        [HttpGet]
        public ActionResult KeysTest()
        {
            var questions = this.GetQuestions(4);
            return View(questions);
        }

        private List<QuestionViewModel> GetQuestions(int testId)
        {
            var questions = new List<QuestionViewModel>();

            var brassQuestions = this.context.Questions.Where(x => x.TestId == testId).ToList();

            foreach (var question in brassQuestions)
            {
                var answers = new List<AnswerViewModel>();
                foreach (var answer in question.Answers)
                {
                    answers.Add(new AnswerViewModel()
                    {
                        Id = answer.Id,
                        Text = answer.Text,
                        IsCorrect = answer.IsCorrect
                    });
                }

                questions.Add(new QuestionViewModel()
                {
                    Id = question.Id,
                    QuestionTitle = question.Title,
                    Answers = answers,
                    Picture = question.Image,
                    Sound = question.Sound
                });
            }
            return questions;
        }

        [HttpPost]
        public ActionResult CheckTest(string[] answers)
        {
            var model = new List<QuestionViewModel>();

            foreach (var answer in answers)
            {
                int selected = int.Parse(answer);
                bool isCorrect = this.context.Answers
                    .First(x => x.Id == selected)
                    .IsCorrect;
                if (!isCorrect)
                {
                    var question = this.context.Answers
                        .First(x => x.Id == selected).Question;
                    model.Add(new QuestionViewModel()
                    {
                        QuestionTitle = question.Title,
                        CorrectAnswer = this.context.Answers.First(x => x.QuestionId == question.Id && x.IsCorrect == true).Text,
                        SelectedAnswer = this.context.Answers.First(x => x.Id == selected).Text,
                        Picture = question.Image,
                        Sound = question.Sound,
                        Id = question.Id
                    });
                }
            }
            return this.Json(new { Model = model });
        }
    }
}