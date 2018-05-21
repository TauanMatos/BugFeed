using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace BugFeed.Utils.Extensions
{
  public static class StringExtensions
  {
    public static string ToPassword(this string asPassword)
    {
      using (MD5 loHash = MD5.Create())
      {
        byte[] data = loHash.ComputeHash(Encoding.UTF8.GetBytes(asPassword));

        StringBuilder sBuilder = new StringBuilder();

        for (int i = 0; i < data.Length; i++)
        {
          sBuilder.Append(data[i].ToString("x2"));
        }

        return sBuilder.ToString();
      }
    }
  }
}
