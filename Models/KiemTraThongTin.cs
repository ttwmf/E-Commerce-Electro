using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Electro.Models
{
    public class KiemTraThongTin
    {
        public static readonly string  HOTEN_NULL = "Họ tên không được để trống.";
        public static readonly string SDT_NULL = "Số điện thoại không được để trống.";
        public static readonly string SDT_FAIL = "Số điện thoại không hợp lê.";
        public static readonly string EMAIL_NULL = "Email không được để trống.";
        public static readonly string EMAIL_FAIL = "Email không đúng định dạng.";
        public static readonly string DIACHI_NULL = "Địa chỉ không được để trống.";

        public static string hasErrorHoTen = "";
        public static string hasErrorEmail = "";
        public static string hasErrorBinhLuan = "";
        public static string hasErrorRating = "";
        public static bool hasError = false;
        public static string KiemTraEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
            {
                return "Email không được rỗng.";
            }


            if (new EmailAddressAttribute().IsValid(email))
            {
                return "ok";
            }
            else
            {

                return "Email không đúng định dạng.";
            }
            

        }

        public static string KiemTraSDT(string number)
        {
            if (string.IsNullOrEmpty(number))
            {

                return "Số điện thoại không được để trống.";
            }
            if (Regex.Match(number, @"(84|0[3|5|7|8|9])+([0-9]{8})\b").Success == true)
            {
                return "ok";
            }
            else
            {
                return "Số điện thoại không đúng định dạng.";
            }
        }
    }
}