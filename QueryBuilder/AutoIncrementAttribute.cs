using System;

namespace SqlKata
{
    /// <summary>
    /// This class is used as metadata to ignore an auto-increment property on insert
    /// </summary>
    /// <example>
    /// <code>
    /// public class  Person
    /// {
    ///    [AutoIncrement]
    ///    public int PersonId {get; set;}
    ///    
    ///    public string Name {get ;set;}
    ///
    /// }
    ///
    /// new Query("Table").Insert(new Person { PersonId = 0, Name = "User" })
    ///
    /// output: INSERT INTO [Table] ([Name]) VALUES('User')
    /// </code>
    /// </example>
    public class AutoIncrementAttribute : Attribute
    {
        // MC 2020.09.04 New attribute
    }
}
