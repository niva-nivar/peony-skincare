-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 05:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skin`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `to` varchar(191) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL,
  `bcc` varchar(191) DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `headers` text DEFAULT NULL,
  `attachments` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_log`
--

INSERT INTO `email_log` (`id`, `date`, `from`, `to`, `cc`, `bcc`, `subject`, `body`, `headers`, `attachments`) VALUES
(1, '2024-05-04 14:43:46', NULL, 'isra@avin.com', NULL, NULL, 'Reset Password Notification', '--EAdirY_X\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Hello!\r\n\r\nYou are receiving this emai=\r\nl because we received a password reset request for your account.\r\n\r\nReset=\r\n Password: http://localhost/reset-password/2053a72520876e1503819a5382fbeb83=\r\n8ed02799899f51d027578cb73f0cef15?email=3Disra%40avin.com\r\n\r\nThis password=\r\n reset link will expire in 60 minutes.\r\n\r\nIf you did not request a passwo=\r\nrd reset, no further action is required.\r\n\r\nRegards,SkinCare\r\n\r\nIf you=\r\n=E2=80=99re having trouble clicking the \"Reset Password\" button, copy and p=\r\naste the URL below\r\ninto your web browser: [http://localhost/reset-passwor=\r\nd/2053a72520876e1503819a5382fbeb838ed02799899f51d027578cb73f0cef15?email=3D=\r\nisra%40avin.com](http://localhost/reset-password/2053a72520876e1503819a5382=\r\nfbeb838ed02799899f51d027578cb73f0cef15?email=3Disra%40avin.com)\r\n\r\n=C2=\r\n=A9 2024 SkinCare. All rights reserved.\r\n\r\n--EAdirY_X\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Hel=\r\nlo!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, =\r\nBlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Appl=\r\ne Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; fo=\r\nnt-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You ar=\r\ne receiving this email because we received a password reset request for you=\r\nr account.</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" ce=\r\nllpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing=\r\n: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', R=\r\noboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\',=\r\n \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premail=\r\ner-cellspacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; t=\r\next-align: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"bo=\r\nx-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Sego=\r\ne UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI=\r\n Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" b=\r\norder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=\r\n=3D\"center\" style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n=\r\n<table border=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentatio=\r\nn\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSys=\r\ntemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emo=\r\nji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<t=\r\nd style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D=\r\n\"http://localhost/reset-password/2053a72520876e1503819a5382fbeb838ed0279989=\r\n9f51d027578cb73f0cef15?email=3Disra%40avin.com\" class=3D\"button button-blue=\r\n\" target=3D\"_blank\" rel=3D\"noopener\" style=3D\"box-sizing: border-box; font-=\r\nfamily: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, A=\r\nrial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';=\r\n position: relative; -webkit-text-size-adjust: none; border-radius: 4px; co=\r\nlor: #fff; display: inline-block; overflow: hidden; text-decoration: none; =\r\nbackground-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 1=\r\n8px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid =\r\n#2d3748;\">Reset Password</a>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n<=\r\n/table>\r\n</td>\r\n</tr>\r\n</table>\r\n<p style=3D\"box-sizing: border-box; fo=\r\nnt-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica=\r\n, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbo=\r\nl\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0;=\r\n text-align: left;\">This password reset link will expire in 60 minutes.</p>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">If you did not=\r\n request a password reset, no further action is required.</p>\r\n<!-- Saluta=\r\ntion -->\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, =\r\nBlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Appl=\r\ne Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; fo=\r\nnt-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regard=\r\ns,<br>SkinCare</p>\r\n<!-- Subcopy -->\r\n<table class=3D\"subcopy\" width=3D\"1=\r\n00%\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box=\r\n-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe=\r\n UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI =\r\nEmoji\', \'Segoe UI Symbol\'; position: relative; border-top: 1px solid #e8e5e=\r\nf; margin-top: 25px; padding-top: 25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<p style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; text-align=\r\n: left; font-size: 14px;\">If you=E2=80=99re having trouble clicking the \"Re=\r\nset Password\" button, copy and paste the URL below\r\ninto your web browser:=\r\n <a href=3D\"http://localhost/reset-password/2053a72520876e1503819a5382fbeb8=\r\n38ed02799899f51d027578cb73f0cef15?email=3Disra%40avin.com\" style=3D\"box-siz=\r\ning: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\'=\r\n, Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoj=\r\ni\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">http://localhos=\r\nt/reset-password/2053a72520876e1503819a5382fbeb838ed02799899f51d027578cb73f=\r\n0cef15?email=3Disra%40avin.com</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n=\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-si=\r\nzing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI=\r\n\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emo=\r\nji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" ali=\r\ngn=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"pre=\r\nsentation\" style=3D\"box-sizing: border-box; font-family: -apple-system, Bli=\r\nnkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple C=\r\nolor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -prem=\r\nailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; m=\r\nargin: 0 auto; padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td=\r\n class=3D\"content-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; f=\r\nont-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetic=\r\na, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symb=\r\nol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"b=\r\nox-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Seg=\r\noe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe U=\r\nI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin=\r\n-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 =\r\nSkinCare. All rights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n=\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--EAdirY_X--\r\n', 'To: isra@avin.com\r\nSubject: Reset Password Notification\r\n', NULL),
(2, '2024-05-04 15:01:34', NULL, 'test@mail.com', NULL, NULL, 'Activation required', '--sDtJzxUl\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your=\r\n email before you can start using all of our services.\r\n\r\nActivate: http:=\r\n//127.0.0.1:8000/activate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWxzO37RL2=\r\n7sIKuPVs9MC462J\r\n\r\nThank you for using our application!\r\n\r\nRegards,Skin=\r\nCare\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, =\r\ncopy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:800=\r\n0/activate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWxzO37RL27sIKuPVs9MC462J=\r\n](http://127.0.0.1:8000/activate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWx=\r\nzO37RL27sIKuPVs9MC462J)\r\n\r\n=C2=A9 2024 SkinCare. All rights reserved.\r\n\r\n--sDtJzxUl\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Wel=\r\ncome!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system=\r\n, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Ap=\r\nple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; =\r\nfont-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You =\r\nneed to activate your email before you can start using all of our services.=\r\n</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, He=\r\nlvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe U=\r\nI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellsp=\r\nacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align=\r\n: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" border=3D\"=\r\n0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-s=\r\nizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe U=\r\nI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Em=\r\noji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=3D\"center=\r\n\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table bor=\r\nder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D\"http:/=\r\n/127.0.0.1:8000/activate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWxzO37RL27=\r\nsIKuPVs9MC462J\" class=3D\"button button-blue\" target=3D\"_blank\" rel=3D\"noope=\r\nner\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacS=\r\nystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color E=\r\nmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-tex=\r\nt-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block=\r\n; overflow: hidden; text-decoration: none; background-color: #2d3748; borde=\r\nr-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right:=\r\n 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\r\n</td>=\r\n\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for =\r\nusing our application!</p>\r\n<!-- Salutation -->\r\n<p style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; =\r\nmargin-top: 0; text-align: left;\">Regards,<br>SkinCare</p>\r\n<!-- Subcopy -=\r\n->\r\n<table class=3D\"subcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: =\r\n-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sa=\r\nns-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; positio=\r\nn: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: =\r\n25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif=\r\n, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relat=\r\nive;\">\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line=\r\n-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you=\r\n=E2=80=99re having trouble clicking the \"Activate\" button, copy and paste t=\r\nhe URL below\r\ninto your web browser: <a href=3D\"http://127.0.0.1:8000/acti=\r\nvate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWxzO37RL27sIKuPVs9MC462J\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont=\r\n, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'S=\r\negoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">htt=\r\np://127.0.0.1:8000/activate/uKwWhlpp4iT42z4rD10bLlO31OU9sXOt68vRTC2GWxzO37R=\r\nL27sIKuPVs9MC462J</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n</td>\r\n</t=\r\nr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" align=3D\"center\" =\r\nwidth=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" sty=\r\nle=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFon=\r\nt, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'=\r\nSegoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadd=\r\ning: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto;=\r\n padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td class=3D\"cont=\r\nent-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -a=\r\npple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans=\r\n-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position:=\r\n relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"box-sizing: bor=\r\nder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto=\r\n, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Seg=\r\noe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color=\r\n: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 SkinCare. All =\r\nrights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</tabl=\r\ne>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--sDtJzxUl--\r\n', 'To: test@mail.com\r\nSubject: Activation required\r\n', NULL),
(3, '2024-05-04 15:05:42', NULL, 'test@mail.com', NULL, NULL, 'Activation required', '--Q9Ms4cmG\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your=\r\n email before you can start using all of our services.\r\n\r\nActivate: http:=\r\n//127.0.0.1:8000/activate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2dVzfxO4=\r\nI8c6fAEfcYVKpdM\r\n\r\nThank you for using our application!\r\n\r\nRegards,Skin=\r\nCare\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, =\r\ncopy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:800=\r\n0/activate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2dVzfxO4I8c6fAEfcYVKpdM=\r\n](http://127.0.0.1:8000/activate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2=\r\ndVzfxO4I8c6fAEfcYVKpdM)\r\n\r\n=C2=A9 2024 SkinCare. All rights reserved.\r\n\r\n--Q9Ms4cmG\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Wel=\r\ncome!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system=\r\n, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Ap=\r\nple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; =\r\nfont-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You =\r\nneed to activate your email before you can start using all of our services.=\r\n</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, He=\r\nlvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe U=\r\nI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellsp=\r\nacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align=\r\n: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" border=3D\"=\r\n0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-s=\r\nizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe U=\r\nI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Em=\r\noji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=3D\"center=\r\n\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table bor=\r\nder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D\"http:/=\r\n/127.0.0.1:8000/activate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2dVzfxO4I=\r\n8c6fAEfcYVKpdM\" class=3D\"button button-blue\" target=3D\"_blank\" rel=3D\"noope=\r\nner\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacS=\r\nystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color E=\r\nmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-tex=\r\nt-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block=\r\n; overflow: hidden; text-decoration: none; background-color: #2d3748; borde=\r\nr-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right:=\r\n 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\r\n</td>=\r\n\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for =\r\nusing our application!</p>\r\n<!-- Salutation -->\r\n<p style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; =\r\nmargin-top: 0; text-align: left;\">Regards,<br>SkinCare</p>\r\n<!-- Subcopy -=\r\n->\r\n<table class=3D\"subcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: =\r\n-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sa=\r\nns-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; positio=\r\nn: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: =\r\n25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif=\r\n, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relat=\r\nive;\">\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line=\r\n-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you=\r\n=E2=80=99re having trouble clicking the \"Activate\" button, copy and paste t=\r\nhe URL below\r\ninto your web browser: <a href=3D\"http://127.0.0.1:8000/acti=\r\nvate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2dVzfxO4I8c6fAEfcYVKpdM\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont=\r\n, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'S=\r\negoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">htt=\r\np://127.0.0.1:8000/activate/VTPoLf5nMEU1X0NkGSIYMnNnzxGwlpV9GqxVE8YOp2dVzfx=\r\nO4I8c6fAEfcYVKpdM</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n</td>\r\n</t=\r\nr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" align=3D\"center\" =\r\nwidth=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" sty=\r\nle=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFon=\r\nt, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'=\r\nSegoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadd=\r\ning: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto;=\r\n padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td class=3D\"cont=\r\nent-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -a=\r\npple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans=\r\n-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position:=\r\n relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"box-sizing: bor=\r\nder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto=\r\n, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Seg=\r\noe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color=\r\n: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 SkinCare. All =\r\nrights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</tabl=\r\ne>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--Q9Ms4cmG--\r\n', 'To: test@mail.com\r\nSubject: Activation required\r\n', NULL);
INSERT INTO `email_log` (`id`, `date`, `from`, `to`, `cc`, `bcc`, `subject`, `body`, `headers`, `attachments`) VALUES
(4, '2024-05-04 15:10:05', 'SkinCare <Avin@isra.com>', 'test@mail.com', NULL, NULL, 'Activation required', '--6GNmF1hi\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your=\r\n email before you can start using all of our services.\r\n\r\nActivate: http:=\r\n//127.0.0.1:8000/activate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe2OlIzuS=\r\nDr9T5kCV7UqGEwj\r\n\r\nThank you for using our application!\r\n\r\nRegards,Skin=\r\nCare\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, =\r\ncopy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:800=\r\n0/activate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe2OlIzuSDr9T5kCV7UqGEwj=\r\n](http://127.0.0.1:8000/activate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe=\r\n2OlIzuSDr9T5kCV7UqGEwj)\r\n\r\n=C2=A9 2024 SkinCare. All rights reserved.\r\n\r\n--6GNmF1hi\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Wel=\r\ncome!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system=\r\n, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Ap=\r\nple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; =\r\nfont-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You =\r\nneed to activate your email before you can start using all of our services.=\r\n</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, He=\r\nlvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe U=\r\nI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellsp=\r\nacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align=\r\n: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" border=3D\"=\r\n0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-s=\r\nizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe U=\r\nI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Em=\r\noji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=3D\"center=\r\n\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table bor=\r\nder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D\"http:/=\r\n/127.0.0.1:8000/activate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe2OlIzuSD=\r\nr9T5kCV7UqGEwj\" class=3D\"button button-blue\" target=3D\"_blank\" rel=3D\"noope=\r\nner\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacS=\r\nystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color E=\r\nmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-tex=\r\nt-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block=\r\n; overflow: hidden; text-decoration: none; background-color: #2d3748; borde=\r\nr-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right:=\r\n 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\r\n</td>=\r\n\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for =\r\nusing our application!</p>\r\n<!-- Salutation -->\r\n<p style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; =\r\nmargin-top: 0; text-align: left;\">Regards,<br>SkinCare</p>\r\n<!-- Subcopy -=\r\n->\r\n<table class=3D\"subcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: =\r\n-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sa=\r\nns-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; positio=\r\nn: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: =\r\n25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif=\r\n, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relat=\r\nive;\">\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line=\r\n-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you=\r\n=E2=80=99re having trouble clicking the \"Activate\" button, copy and paste t=\r\nhe URL below\r\ninto your web browser: <a href=3D\"http://127.0.0.1:8000/acti=\r\nvate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe2OlIzuSDr9T5kCV7UqGEwj\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont=\r\n, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'S=\r\negoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">htt=\r\np://127.0.0.1:8000/activate/eaZW7wXNXCyhKA84D9S8ZoVOFsgPJxafg1UbKA4OIe2OlIz=\r\nuSDr9T5kCV7UqGEwj</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n</td>\r\n</t=\r\nr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" align=3D\"center\" =\r\nwidth=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" sty=\r\nle=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFon=\r\nt, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'=\r\nSegoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadd=\r\ning: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto;=\r\n padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td class=3D\"cont=\r\nent-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -a=\r\npple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans=\r\n-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position:=\r\n relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"box-sizing: bor=\r\nder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto=\r\n, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Seg=\r\noe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color=\r\n: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 SkinCare. All =\r\nrights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</tabl=\r\ne>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--6GNmF1hi--\r\n', 'From: SkinCare <Avin@isra.com>\r\nTo: test@mail.com\r\nSubject: Activation required\r\n', NULL),
(5, '2024-05-04 15:11:06', 'SkinCare <Avin@isra.com>', 'hayth4m@outlook.com', NULL, NULL, 'Activation required', '--PSNtAOLX\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your=\r\n email before you can start using all of our services.\r\n\r\nActivate: http:=\r\n//127.0.0.1:8000/activate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINymLdpOtVJ=\r\nP9b10Dg43BMjmOV\r\n\r\nThank you for using our application!\r\n\r\nRegards,Skin=\r\nCare\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, =\r\ncopy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:800=\r\n0/activate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINymLdpOtVJP9b10Dg43BMjmOV=\r\n](http://127.0.0.1:8000/activate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINym=\r\nLdpOtVJP9b10Dg43BMjmOV)\r\n\r\n=C2=A9 2024 SkinCare. All rights reserved.\r\n\r\n--PSNtAOLX\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Wel=\r\ncome!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system=\r\n, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Ap=\r\nple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; =\r\nfont-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You =\r\nneed to activate your email before you can start using all of our services.=\r\n</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, He=\r\nlvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe U=\r\nI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellsp=\r\nacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align=\r\n: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" border=3D\"=\r\n0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-s=\r\nizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe U=\r\nI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Em=\r\noji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=3D\"center=\r\n\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table bor=\r\nder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D\"http:/=\r\n/127.0.0.1:8000/activate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINymLdpOtVJP=\r\n9b10Dg43BMjmOV\" class=3D\"button button-blue\" target=3D\"_blank\" rel=3D\"noope=\r\nner\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacS=\r\nystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color E=\r\nmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-tex=\r\nt-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block=\r\n; overflow: hidden; text-decoration: none; background-color: #2d3748; borde=\r\nr-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right:=\r\n 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\r\n</td>=\r\n\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for =\r\nusing our application!</p>\r\n<!-- Salutation -->\r\n<p style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; =\r\nmargin-top: 0; text-align: left;\">Regards,<br>SkinCare</p>\r\n<!-- Subcopy -=\r\n->\r\n<table class=3D\"subcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: =\r\n-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sa=\r\nns-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; positio=\r\nn: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: =\r\n25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif=\r\n, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relat=\r\nive;\">\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line=\r\n-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you=\r\n=E2=80=99re having trouble clicking the \"Activate\" button, copy and paste t=\r\nhe URL below\r\ninto your web browser: <a href=3D\"http://127.0.0.1:8000/acti=\r\nvate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINymLdpOtVJP9b10Dg43BMjmOV\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont=\r\n, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'S=\r\negoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">htt=\r\np://127.0.0.1:8000/activate/xE1M2Lv9r5oNg1D5uFB9T15pXkY18xRkkWQSDEINymLdpOt=\r\nVJP9b10Dg43BMjmOV</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n</td>\r\n</t=\r\nr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" align=3D\"center\" =\r\nwidth=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" sty=\r\nle=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFon=\r\nt, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'=\r\nSegoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadd=\r\ning: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto;=\r\n padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td class=3D\"cont=\r\nent-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -a=\r\npple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans=\r\n-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position:=\r\n relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"box-sizing: bor=\r\nder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto=\r\n, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Seg=\r\noe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color=\r\n: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 SkinCare. All =\r\nrights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</tabl=\r\ne>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--PSNtAOLX--\r\n', 'From: SkinCare <Avin@isra.com>\r\nTo: hayth4m@outlook.com\r\nSubject: Activation required\r\n', NULL),
(6, '2024-05-04 15:11:18', 'SkinCare <Avin@isra.com>', 'hayth4m@outlook.com', NULL, NULL, 'Activation required', '--RuDHbNPF\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[SkinCare](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your=\r\n email before you can start using all of our services.\r\n\r\nActivate: http:=\r\n//127.0.0.1:8000/activate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrha5w4lYk=\r\nJVvt3pvtoSwaelt\r\n\r\nThank you for using our application!\r\n\r\nRegards,Skin=\r\nCare\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, =\r\ncopy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:800=\r\n0/activate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrha5w4lYkJVvt3pvtoSwaelt=\r\n](http://127.0.0.1:8000/activate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrh=\r\na5w4lYkJVvt3pvtoSwaelt)\r\n\r\n=C2=A9 2024 SkinCare. All rights reserved.\r\n\r\n--RuDHbNPF\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n<meta name=3D\"viewport\" content=3D\"width=3Dd=\r\nevice-width, initial-scale=3D1.0\">\r\n<meta http-equiv=3D\"Content-Type\" cont=\r\nent=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backg=\r\nround-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margi=\r\nn: 0; padding: 0; width: 100% !important;\">\r\n<style>\r\n@media only screen =\r\nand (max-width: 600px) {\r\n.inner-body {\r\nwidth: 100% !important;\r\n}\r\n=\r\n\r\n.footer {\r\nwidth: 100% !important;\r\n}\r\n}\r\n\r\n@media only screen and =\r\n(max-width: 500px) {\r\n.button {\r\nwidth: 100% !important;\r\n}\r\n}\r\n</styl=\r\ne>\r\n\r\n<table class=3D\"wrapper\" width=3D\"100%\" cellpadding=3D\"0\" cellspaci=\r\nng=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -prema=\r\niler-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: =\r\n100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, =\r\nArial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'=\r\n; position: relative;\">\r\n<table class=3D\"content\" width=3D\"100%\" cellpaddi=\r\nng=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: borde=\r\nr-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, =\r\nHelvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe=\r\n UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cell=\r\nspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">=\r\n\r\n<tr>\r\n<td class=3D\"header\" style=3D\"box-sizing: border-box; font-family=\r\n: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, =\r\nsans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; posit=\r\nion: relative; padding: 25px 0; text-align: center;\">\r\n<a href=3D\"http://l=\r\nocalhost\" style=3D\"box-sizing: border-box; font-family: -apple-system, Blin=\r\nkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Co=\r\nlor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color:=\r\n #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; displa=\r\ny: inline-block;\">\r\nSkinCare\r\n</a>\r\n</td>\r\n</tr>\r\n\r\n<!-- Email Body -=\r\n->\r\n<tr>\r\n<td class=3D\"body\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMa=\r\ncSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color=\r\n Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premaile=\r\nr-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; backgr=\r\nound-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px soli=\r\nd #edf2f7; margin: 0; padding: 0; width: 100%;\">\r\n<table class=3D\"inner-bo=\r\ndy\" align=3D\"center\" width=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=\r\n=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: -apple-syst=\r\nem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'=\r\nApple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative=\r\n; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 5=\r\n70px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px;=\r\n border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 r=\r\ngba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n<!-- B=\r\nody content -->\r\n<tr>\r\n<td class=3D\"content-cell\" style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Robot=\r\no, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Se=\r\ngoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\r\n<h=\r\n1 style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852=\r\n; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Wel=\r\ncome!</h1>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system=\r\n, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Ap=\r\nple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; =\r\nfont-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You =\r\nneed to activate your email before you can start using all of our services.=\r\n</p>\r\n<table class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, He=\r\nlvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe U=\r\nI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellsp=\r\nacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align=\r\n: center; width: 100%;\">\r\n<tr>\r\n<td align=3D\"center\" style=3D\"box-sizing:=\r\n border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Ro=\r\nboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', =\r\n\'Segoe UI Symbol\'; position: relative;\">\r\n<table width=3D\"100%\" border=3D\"=\r\n0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=3D\"box-s=\r\nizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe U=\r\nI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Em=\r\noji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td align=3D\"center=\r\n\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSyst=\r\nemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoj=\r\ni\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<table bor=\r\nder=3D\"0\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<tr>\r\n<td style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont,=\r\n \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Se=\r\ngoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\r\n<a href=3D\"http:/=\r\n/127.0.0.1:8000/activate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrha5w4lYkJ=\r\nVvt3pvtoSwaelt\" class=3D\"button button-blue\" target=3D\"_blank\" rel=3D\"noope=\r\nner\" style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacS=\r\nystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color E=\r\nmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-tex=\r\nt-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block=\r\n; overflow: hidden; text-decoration: none; background-color: #2d3748; borde=\r\nr-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right:=\r\n 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\r\n</td>=\r\n\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>=\r\n\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMac=\r\nSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color =\r\nEmoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size:=\r\n 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for =\r\nusing our application!</p>\r\n<!-- Salutation -->\r\n<p style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Rob=\r\noto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'=\r\nSegoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; =\r\nmargin-top: 0; text-align: left;\">Regards,<br>SkinCare</p>\r\n<!-- Subcopy -=\r\n->\r\n<table class=3D\"subcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=\r\n=3D\"0\" role=3D\"presentation\" style=3D\"box-sizing: border-box; font-family: =\r\n-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sa=\r\nns-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; positio=\r\nn: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: =\r\n25px;\">\r\n<tr>\r\n<td style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif=\r\n, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relat=\r\nive;\">\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-system, Bl=\r\ninkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple =\r\nColor Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line=\r\n-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you=\r\n=E2=80=99re having trouble clicking the \"Activate\" button, copy and paste t=\r\nhe URL below\r\ninto your web browser: <a href=3D\"http://127.0.0.1:8000/acti=\r\nvate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrha5w4lYkJVvt3pvtoSwaelt\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont=\r\n, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'S=\r\negoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">htt=\r\np://127.0.0.1:8000/activate/ZOyztyW1O3SzixbbjFXfvpthzALwoNUAfAA2OtLMrha5w4l=\r\nYkJVvt3pvtoSwaelt</a></p>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n</td>\r\n</t=\r\nr>\r\n</table>\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=3D\"box-sizing: border-b=\r\nox; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Hel=\r\nvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI=\r\n Symbol\'; position: relative;\">\r\n<table class=3D\"footer\" align=3D\"center\" =\r\nwidth=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" role=3D\"presentation\" sty=\r\nle=3D\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFon=\r\nt, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'=\r\nSegoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadd=\r\ning: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto;=\r\n padding: 0; text-align: center; width: 570px;\">\r\n<tr>\r\n<td class=3D\"cont=\r\nent-cell\" align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -a=\r\npple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans=\r\n-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position:=\r\n relative; max-width: 100vw; padding: 32px;\">\r\n<p style=3D\"box-sizing: bor=\r\nder-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto=\r\n, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Seg=\r\noe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color=\r\n: #b0adc5; font-size: 12px; text-align: center;\">=C2=A9 2024 SkinCare. All =\r\nrights reserved.</p>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</tabl=\r\ne>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n--RuDHbNPF--\r\n', 'From: SkinCare <Avin@isra.com>\r\nTo: hayth4m@outlook.com\r\nSubject: Activation required\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) NOT NULL,
  `note` longtext DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `details` longtext DEFAULT NULL,
  `userType` varchar(191) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext DEFAULT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `referer` longtext DEFAULT NULL,
  `methodType` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `details`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', NULL, 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-04-02 17:53:18', '2024-04-02 17:53:18', NULL),
(2, 'Viewed profile/akihn', NULL, 'Registered', 2, 'http://127.0.0.1:8000/profile/akihn', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2024-04-02 17:53:33', '2024-04-02 17:53:33', NULL),
(3, 'Logged Out', NULL, 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/profile/akihn', 'POST', '2024-04-02 17:53:39', '2024-04-02 17:53:39', NULL),
(4, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-04-02 17:53:56', '2024-04-02 17:53:56', NULL),
(5, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-04-02 17:54:21', '2024-04-02 17:54:21', NULL),
(6, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-04-02 17:55:57', '2024-04-02 17:55:57', NULL),
(7, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2024-04-02 17:56:55', '2024-04-02 17:56:55', NULL),
(8, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2024-04-02 17:58:29', '2024-04-02 17:58:29', NULL),
(9, 'Viewed themes', NULL, 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2024-04-02 17:58:37', '2024-04-02 17:58:37', NULL),
(10, 'Viewed users', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/themes', 'GET', '2024-04-02 17:58:56', '2024-04-02 17:58:56', NULL),
(11, 'Viewed users/1/edit', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users', 'GET', '2024-04-02 17:59:06', '2024-04-02 17:59:06', NULL),
(12, 'Edited users/1', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/1/edit', 'PUT', '2024-04-02 17:59:32', '2024-04-02 17:59:32', NULL),
(13, 'Edited users/1', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/1/edit', 'PUT', '2024-04-02 17:59:53', '2024-04-02 17:59:53', NULL),
(14, 'Viewed logs', NULL, 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/1/edit', 'GET', '2024-04-02 18:00:09', '2024-04-02 18:00:09', NULL),
(15, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', NULL, 'GET', '2024-04-02 18:00:45', '2024-04-02 18:00:45', NULL),
(16, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-04-02 18:32:55', '2024-04-02 18:32:55', NULL),
(17, 'Logged Out', NULL, 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'POST', '2024-04-02 18:40:44', '2024-04-02 18:40:44', NULL),
(18, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-05-04 07:48:57', '2024-05-04 07:48:57', NULL),
(19, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2024-05-04 07:49:13', '2024-05-04 07:49:13', NULL),
(20, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-05-04 07:50:03', '2024-05-04 07:50:03', NULL),
(21, 'Viewed users', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2024-05-04 07:50:14', '2024-05-04 07:50:14', NULL),
(22, 'Viewed users/2', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users', 'GET', '2024-05-04 07:50:30', '2024-05-04 07:50:30', NULL),
(23, 'Viewed users', NULL, 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/2', 'GET', '2024-05-04 07:50:53', '2024-05-04 07:50:53', NULL),
(24, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 08:42:08', '2024-05-04 08:42:08', NULL),
(25, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 08:50:29', '2024-05-04 08:50:29', NULL),
(26, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 08:58:18', '2024-05-04 08:58:18', NULL),
(27, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 08:59:45', '2024-05-04 08:59:45', NULL),
(28, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 09:02:44', '2024-05-04 09:02:44', NULL),
(29, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/products', 'GET', '2024-05-04 09:04:31', '2024-05-04 09:04:31', NULL),
(30, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:05:04', '2024-05-04 09:05:04', NULL),
(31, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:06:00', '2024-05-04 09:06:00', NULL),
(32, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:06:31', '2024-05-04 09:06:31', NULL),
(33, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:06:42', '2024-05-04 09:06:42', NULL),
(34, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:06:47', '2024-05-04 09:06:47', NULL),
(35, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/questions', 'GET', '2024-05-04 09:07:51', '2024-05-04 09:07:51', NULL),
(36, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', NULL, 'GET', '2024-05-04 09:09:42', '2024-05-04 09:09:42', NULL),
(37, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', NULL, 'GET', '2024-05-04 09:09:56', '2024-05-04 09:09:56', NULL),
(38, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', NULL, 'GET', '2024-05-04 09:10:25', '2024-05-04 09:10:25', NULL),
(39, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-05-04 09:10:32', '2024-05-04 09:10:32', NULL),
(40, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-05-04 09:10:53', '2024-05-04 09:10:53', NULL),
(41, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-05-04 09:12:12', '2024-05-04 09:12:12', NULL),
(42, 'Viewed home', NULL, 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2024-05-04 09:12:30', '2024-05-04 09:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(15, '2019_02_19_045158_create_laravel_blocker_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2023_02_26_001638_create_email_log', 1),
(19, '2024_05_04_110502_create_posts_table', 2),
(20, '2024_05_04_115548_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'isra@avin.com', '$2y$10$e.1xzAZ07htz4893N..6NuceQov1qPSf56dUUcK.zU9735OJP.EXG', '2024-05-04 11:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(2, 2, 1, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(3, 3, 1, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(4, 4, 1, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Description for Product 1', 19.99, 'ds-2.jpg', NULL, NULL),
(2, 'Product 2', 'Description for Product 2', 29.99, 'ds-3.jpg', NULL, NULL),
(3, 'Product 3', 'Description for Product 3', 39.99, 'ds-4.jpg', NULL, NULL),
(4, 'foot', 'greg', 23.00, '1714831195.png', '2024-05-04 10:59:55', '2024-05-04 10:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(191) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `twitter_username` varchar(191) DEFAULT NULL,
  `github_username` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2024-04-02 17:46:58', '2024-04-02 17:46:58'),
(4, 5, 1, NULL, NULL, NULL, NULL, NULL, 0, '2024-05-04 12:11:09', '2024-05-04 12:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(2, 'User', 'user', 'User Role', 1, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2024-04-02 17:46:57', '2024-04-02 17:46:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 1, '2024-04-02 17:59:53', '2024-04-02 17:59:53', NULL),
(7, 2, 5, '2024-05-04 12:15:07', '2024-05-04 12:15:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) NOT NULL,
  `social_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2024-04-02 17:46:58', '2024-04-02 17:46:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) NOT NULL,
  `signup_ip_address` varchar(45) DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) DEFAULT NULL,
  `admin_ip_address` varchar(45) DEFAULT NULL,
  `updated_ip_address` varchar(45) DEFAULT NULL,
  `deleted_ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Avin', 'Isra', 'isra@avin.com', NULL, '$2y$10$easheVQKrK8JAIIs/J1HDuW1cMK9f5t.y00nOEVALHK.dbdf9axfi', NULL, 1, 'R9tpO0m3rpPMyOJEO82CPXuNa0g7jNUQUPMfkC39bVl0TQzC41iMaiyfqa0akZJR', '42.251.135.215', '134.31.195.230', NULL, NULL, '0.0.0.0', NULL, '2024-04-02 17:46:58', '2024-04-02 17:59:53', NULL),
(5, 'link', 'ha', 'asd', 'hayth4m@outlook.com', NULL, '$2y$10$0HTjaXL9dGxZkPPwWiJwWeTcpfZiybFUWbklb6PJtjUDlcuu0N5Y6', NULL, 1, 'o3F6T0uyfpIAagdCxJ3BOW1X9F566Qf39IcK3wYBkMwTrs4D1bSiFH0viK3JOmO4', '0.0.0.0', '0.0.0.0', NULL, NULL, NULL, NULL, '2024-05-04 12:11:05', '2024-05-04 12:15:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
