using System;
using System.Collections.Generic;

namespace LoginForm.Models;

public partial class UserDetail
{
    public int Id { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string? UserName { get; set; }
}
