using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicInstruments
{
    public interface IMusicInstrumentsTestDbContext
    {
        DbSet<Answer> Answers { get; set; }
        DbSet<Question> Questions { get; set; }
        DbSet<Respons> Responses { get; set; }
        DbSet<Test> Tests { get; set; }

        int SaveChanges();
    }
}
