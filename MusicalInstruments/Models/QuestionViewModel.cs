using MusicInstruments;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MusicalInstruments.Models
{
    public class QuestionViewModel
    {
        public int Id { get; set; }
        
        public string QuestionTitle { get; set; }

        public List<AnswerViewModel> Answers { get; set; }

        public string Picture { get; set; }

        public string Sound { get; set; }
        
        public string SelectedAnswer { get; set; }

        public string CorrectAnswer { get; set; }
    }
}