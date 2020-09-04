using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlKata
{
    public enum QueryType
    {
        // MC 2020.09.04 New enum (to exclude autoincrement fields from insert statements and maybe something more in the feature)
        Select,
        Insert,
        Update,
        Delete
    }
}
