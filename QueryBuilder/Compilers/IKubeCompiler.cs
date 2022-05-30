using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlKata.Compilers
{
    public interface IKubeCompiler
    {
        string GetFieldAsAlias(string field, string alias);
    }
}
