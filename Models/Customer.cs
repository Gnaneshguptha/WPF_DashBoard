using System;
using System.Collections.Generic;

namespace LoginForm.Models;

public partial class Customer
{
    public int Id { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public string? PhoneNumber { get; set; }

    public int? Age { get; set; }

    public string? Address { get; set; }
}
