﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicalInstruments.Models
{
    public class AnswerViewModel
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public bool IsCorrect { get; set; }
    }
}