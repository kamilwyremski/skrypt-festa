-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Wrz 2016, 12:49
-- Wersja serwera: 5.6.25
-- Wersja PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `festa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `name_url` varchar(64) NOT NULL,
  `thumb` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `content_short` varchar(512) NOT NULL,
  `keywords` varchar(512) NOT NULL,
  `description` varchar(512) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`id`, `name`, `name_url`, `thumb`, `content`, `content_short`, `keywords`, `description`, `date`) VALUES
(1, 'Pierwszy przykładowy artykuł', 'pierwszyprzykladowyartykul', '/upload/images/1.jpg', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce condimentum molestie nunc, quis bibendum orci aliquam in. Sed eget iaculis velit. Integer id eros blandit, posuere eros sed, interdum ex. Nam mattis urna erat, a sodales leo ullamcorper a. Nunc et erat tellus. Donec maximus, felis in consequat condimentum, nisl sapien faucibus felis, sit amet scelerisque eros lorem et purus. Nam quis lacus sollicitudin turpis dapibus tincidunt. Sed venenatis erat sit amet metus commodo, sit amet porta nunc pretium. Pellentesque sed neque tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sollicitudin sodales magna nec cursus. Nunc molestie, lectus sed faucibus pretium, nibh lacus rutrum ipsum, at tempus magna odio et neque. Vestibulum consequat tristique sem ac consectetur. Duis a luctus tellus. Ut ante lectus, viverra a posuere elementum, condimentum quis eros. Suspendisse tempor fermentum mi in sodales.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Vestibulum auctor molestie lorem, in ultricies dolor pretium a. Mauris sem arcu, imperdiet ac turpis ut, posuere venenatis enim. Aenean dui velit, accumsan quis bibendum rutrum, mollis id leo. Vivamus semper eleifend nunc, non sagittis nisl lobortis sit amet. Sed venenatis massa in tellus malesuada, rhoncus tincidunt ligula iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum mollis orci vitae ornare scelerisque. Ut rutrum odio at fringilla imperdiet. Nulla euismod lectus nec neque pretium egestas ac sit amet massa. Vivamus laoreet eros enim, eu sollicitudin sapien vulputate id. Donec finibus libero nec est posuere venenatis. Etiam ullamcorper interdum nulla in posuere.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Donec porttitor vehicula malesuada. Nulla dapibus magna eget lacus venenatis, et eleifend dolor euismod. Praesent sit amet augue a tortor bibendum consequat. Aenean lectus ante, fermentum in pulvinar sit amet, mollis id sapien. Sed orci lorem, blandit vel sollicitudin nec, lacinia non lectus. Nunc laoreet mauris arcu, vel mattis quam bibendum sit amet. Donec a finibus est.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Ut bibendum neque at orci lobortis faucibus. Nunc a velit ac nunc viverra interdum. Nunc sit amet augue at nunc venenatis scelerisque. Quisque laoreet turpis quis purus fringilla dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque sit amet sagittis est, in tempus mauris. In massa ante, scelerisque ac massa in, cursus ullamcorper purus. Cras luctus consequat ipsum, nec cursus justo convallis ac.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Fusce ac nisi id lorem tempus suscipit ac id ex. Quisque nec erat libero. Vestibulum venenatis augue et volutpat volutpat. In vel quam vel mi dignissim ultricies. Etiam quis nisl consequat eros elementum dapibus. Fusce fringilla sed dolor eu pulvinar. Ut nulla nisl, pretium quis ligula nec, pretium convallis mauris. Nunc et arcu lorem. Morbi ut tincidunt tortor. Aenean massa mi, bibendum nec iaculis in, auctor at est.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce condimentum molestie nunc, quis bibendum orci aliquam in. Sed eget iaculis velit. Integer id eros blandit, posuere eros sed, interdum ex.', '', '', '2016-09-02 13:40:58'),
(2, 'Drugi artykuł', 'drugiartykul', '/upload/images/2.jpg', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Donec porttitor vehicula malesuada. Nulla dapibus magna eget lacus venenatis, et eleifend dolor euismod. Praesent sit amet augue a tortor bibendum consequat. Aenean lectus ante, fermentum in pulvinar sit amet, mollis id sapien. Sed orci lorem, blandit vel sollicitudin nec, lacinia non lectus. Nunc laoreet mauris arcu, vel mattis quam bibendum sit amet. Donec a finibus est.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Ut bibendum neque at orci lobortis faucibus. Nunc a velit ac nunc viverra interdum. Nunc sit amet augue at nunc venenatis scelerisque. Quisque laoreet turpis quis purus fringilla dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque sit amet sagittis est, in tempus mauris. In massa ante, scelerisque ac massa in, cursus ullamcorper purus. Cras luctus consequat ipsum, nec cursus justo convallis ac.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Fusce ac nisi id lorem tempus suscipit ac id ex. Quisque nec erat libero. Vestibulum venenatis augue et volutpat volutpat. In vel quam vel mi dignissim ultricies. Etiam quis nisl consequat eros elementum dapibus. Fusce fringilla sed dolor eu pulvinar. Ut nulla nisl, pretium quis ligula nec, pretium convallis mauris. Nunc et arcu lorem. Morbi ut tincidunt tortor. Aenean massa mi, bibendum nec iaculis in, auctor at est.</p>\r\n', 'Donec porttitor vehicula malesuada. Nulla dapibus magna eget lacus venenatis, et eleifend dolor euismod. Praesent sit amet augue a tortor bibendum consequat. Aenean lectus ante, fermentum in pulvinar sit amet, mollis id sapien. \r\n', '', '', '2016-09-02 13:42:09'),
(3, 'Trzeci artykuł', 'trzeciartykul', '/upload/images/logo.png', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Donec porttitor vehicula malesuada. Nulla dapibus magna eget lacus venenatis, et eleifend dolor euismod. Praesent sit amet augue a tortor bibendum consequat. Aenean lectus ante, fermentum in pulvinar sit amet, mollis id sapien. Sed orci lorem, blandit vel sollicitudin nec, lacinia non lectus. Nunc laoreet mauris arcu, vel mattis quam bibendum sit amet. Donec a finibus est.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Ut bibendum neque at orci lobortis faucibus. Nunc a velit ac nunc viverra interdum. Nunc sit amet augue at nunc venenatis scelerisque. Quisque laoreet turpis quis purus fringilla dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque sit amet sagittis est, in tempus mauris. In massa ante, scelerisque ac massa in, cursus ullamcorper purus. Cras luctus consequat ipsum, nec cursus justo convallis ac.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Fusce ac nisi id lorem tempus suscipit ac id ex. Quisque nec erat libero. Vestibulum venenatis augue et volutpat volutpat. In vel quam vel mi dignissim ultricies. Etiam quis nisl consequat eros elementum dapibus. Fusce fringilla sed dolor eu pulvinar. Ut nulla nisl, pretium quis ligula nec, pretium convallis mauris. Nunc et arcu lorem. Morbi ut tincidunt tortor. Aenean massa mi, bibendum nec iaculis in, auctor at est.</p>\r\n', 'Ut bibendum neque at orci lobortis faucibus. Nunc a velit ac nunc viverra interdum. Nunc sit amet augue at nunc venenatis scelerisque. Quisque laoreet turpis quis purus fringilla dapibus. ', '', '', '2016-09-02 13:42:57');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `user` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_logs`
--

CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(11) NOT NULL,
  `user` varchar(32) NOT NULL,
  `logged` int(1) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_session`
--

CREATE TABLE IF NOT EXISTS `cms_session` (
  `id` int(11) NOT NULL,
  `user` varchar(32),
  `code` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `index_page`
--

CREATE TABLE IF NOT EXISTS `index_page` (
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `index_page`
--

INSERT INTO `index_page` (`name`, `value`) VALUES
('text_1', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `name_url` varchar(64) NOT NULL,
  `page` varchar(32),
  `content` text NOT NULL,
  `keywords` varchar(512) NOT NULL,
  `description` varchar(512) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `info`
--

INSERT INTO `info` (`id`, `name`, `name_url`, `page`, `content`, `keywords`, `description`) VALUES
(1, 'Polityka prywatności', 'polityka-prywatnosci', 'privacy_policy', '<p>Oto nasze stanowisko w sprawie gromadzenia, przetwarzania i wykorzystywania, wprowadzonych przez użytkownik&oacute;w serwisu, adres&oacute;w e-mail i numer&oacute;w telefon&oacute;w.</p>\r\n\r\n<p>Jaka jest polityka serwisu dotycząca adres&oacute;w e-mail?<br />\r\nPodany podczas dodawania ogłoszenia adres e-mail służy do weryfikacji osoby zamieszczającej ogłoszenie, oraz jest adresem kontaktowym, na kt&oacute;ry zostają odesłane oferty od os&oacute;b zainteresowanych ogłoszeniem. Serwis przechowuje adresy e-mail, numery telefon&oacute;w itp. związane tylko z aktualnie dostępnymi ogłoszeniami, oraz adresy e-mail os&oacute;b, kt&oacute;re wielokrotnie zamieszczały ogłoszenia niezgodne z regulaminem serwisu, aby uniemożliwić im dodawanie kolejnych ogłoszeń.&nbsp;</p>\r\n\r\n<p>Czy adresy e-mail i numery telefon&oacute;w są udostępniane innym osobom, lub firmom?<br />\r\nNie udostępniamy takich danych&nbsp;osobom trzecim lub firmom. Jednak należy mieć na uwadze, że podane w treści ogłoszenia dane (numery telefon&oacute;w, adresy e-mail) mogą zostać &quot;zapamiętane&quot; przez inne osoby lub firmy w okresie, w kt&oacute;rym ogłoszenie jest widoczne w serwisie, w celu p&oacute;źniejszego ich wykorzystania niezgodnie z przeznaczeniem.</p>\r\n\r\n<p>Ciasteczka (pliki cookie) i sygnalizatory WWW (web beacon)</p>\r\n\r\n<p>Zastrzegamy sobie możliwość do wykorzystania plik&oacute;w cookie (ciasteczek) oraz tzw session storage. Pliki te są zapisywane na Twoim komputerze. Służą one do:</p>\r\n\r\n<p>a) dostosowania zawartości serwisu&nbsp;do preferencji użytkownika oraz optymalizacji korzystania ze stron internetowych;,</p>\r\n\r\n<p>b) utrzymania sesji użytkownika serwisu internetowego (po zalogowaniu), dzięki kt&oacute;rej użytkownik nie musi na każdej podstronie serwisu ponownie wpisywać loginu i hasła,</p>\r\n\r\n<p>c) dostarczania użytkownikom treści reklamowych bardziej dostosowanych do ich zainteresowań.</p>\r\n\r\n<p>Serwis wyświetla reklamy pochodzące od zewnętrznych dostawc&oacute;w. Dostawcy reklam (np. Google) mogą używać ciasteczek i sygnalizator&oacute;w WWW, mogą uzyskać informację o Twoim adresie IP i typie używanej przeglądarki, sprawdzić czy zainstalowany jest dodatek Flash itp. Dzięki ciasteczkom, sygnalizatorom i znajomości adresu IP dostawcy reklam mogą decydować o treści reklam.&nbsp;</p>\r\n\r\n<p>Przeglądarki internetowe, oraz niekt&oacute;re Firewalle, umożliwiają wyłączenie obsługi ciasteczek i sygnalizator&oacute;w, lub jej ograniczenie dla wszystkich lub tylko dla wybranych stron WWW. Jednak wyłączenie obsługi ciasteczek i sygnalizator&oacute;w może uniemożliwić poprawne działanie naszego serwisu.&nbsp;</p>\r\n\r\n<p>Wsp&oacute;łczesne przeglądarki umożliwiają przeglądanie stron www tzw. &quot;trybie prywatnym (incognito)&quot; co zazwyczaj oznacza, że wszystkie odwiedzone strony www nie zostaną zapamiętane w lokalnej historii przeglądarki, a pobrane ciasteczka zostaną skasowane po zakończeniu pracy z przeglądarką. Szczeg&oacute;łowy opis &quot;trybu prywatnego&quot; jest dostępny w pomocy przeglądarki.</p>\r\n\r\n<p>Wyłączenie &quot;ciasteczek&quot; w najbardziej popularnych przeglądarkach:</p>\r\n\r\n<p><strong>Google Chrome</strong></p>\r\n\r\n<p>Należy kliknąć na menu (w prawym g&oacute;rnym rogu), zakładka Ustawienia &gt; Pokaż ustawienia zaawansowane. W sekcji &bdquo;Prywatność&rdquo; trzeba kliknąć przycisk Ustawienia treści. W sekcji &bdquo;Pliki cookie&rdquo; można zmienić następujące ustawienia plik&oacute;w Cookie:</p>\r\n\r\n<ul>\r\n	<li>Usuwanie plik&oacute;w Cookie,</li>\r\n	<li>Domyślne blokowanie plik&oacute;w Cookie,</li>\r\n	<li>Domyślne zezwalanie na pliki Cookie,</li>\r\n	<li>Domyślne zachowywanie plik&oacute;w Cookie i danych stron do zamknięcia przeglądarki</li>\r\n	<li>Określanie wyjątk&oacute;w dla plik&oacute;w Cookie z konkretnych witryn lub domen</li>\r\n</ul>\r\n\r\n<p><strong>Mozilla Firefox</strong></p>\r\n\r\n<p>Z menu przeglądarki: Narzędzia &gt; Opcje &gt; Prywatność. Uaktywnić pole Program Firefox: &bdquo;będzie używał ustawień użytkownika&rdquo;. O ciasteczkach (cookies) decyduje zaznaczenie &ndash; bądź nie &ndash; pozycji Akceptuj ciasteczka.</p>\r\n\r\n<p><strong>Opera</strong></p>\r\n\r\n<p>Z menu przeglądarki: Narzędzie &gt; Preferencje &gt; Zaawansowane. O ciasteczkach decyduje zaznaczenie &ndash; bądź nie &ndash; pozycji Ciasteczka.</p>\r\n\r\n<p><strong>Safari</strong></p>\r\n\r\n<p>W menu rozwijanym Safari trzeba wybrać Preferencje i kliknąć ikonę Bezpieczeństwo.<br />\r\nW tym miejscu wybiera się poziom bezpieczeństwa w obszarze ,,Akceptuj pliki cookie&rdquo;.</p>\r\n', '', ''),
(2, 'Regulamin', 'regulamin', 'rules', '<ol>\r\n	<li>Regulamin stanowi prawną podstawę określającą zasady korzystania z naszej witryny. Odwiedzając naszą witryny, akceptujesz aktualne postanowienia tego Regulaminu oraz zobowiązujesz się do przestrzegania wszystkich zawartych w nim zasad.<br />\r\n	Dopełnieniem Regulaminu jest nasza Polityka prywatności.</li>\r\n	<li>Charakter i cel witryny<br />\r\n	Witryna jest&nbsp;serwisem&nbsp;informacyjno-promocyjnymi mającym&nbsp;na celu gromadzenie ofert usług noclegowych w Polsce i za granicą.</li>\r\n	<li>Rejestracja użytkownik&oacute;w i ochrona danych<br />\r\n	Osoba, kt&oacute;ra pragnie dodać do bazy swoją ofertę musi dokonać bezpłatnej rejestracji. Po zakończeniu rejestracji dana osoba będzie miała możliwość zalogowania się do Panelu umożliwiającego dodanie oferty.<br />\r\n	Dane przekazywane podczas rejestracji oraz inne dane osobowe, kt&oacute;re mogą być zbierane od użytkownik&oacute;w podczas korzystania z witryn, są gromadzone i wykorzystywane zgodnie z zasadami zawartymi w naszej Polityce Prywatności oraz Ustawie o ochronie danych osobowych.</li>\r\n	<li>Prawa i możliwości użytkownik&oacute;w witryn<br />\r\n	Rejestrując się w witrynie:\r\n	<ul>\r\n		<li>zgadzasz się podczas rejestracji dostarczyć prawdziwych informacji</li>\r\n		<li>akceptujesz w pełni ten Regulamin korzystania z witryn</li>\r\n		<li>zobowiązujesz się do utrzymania w tajemnicy Twego hasła i zgadzasz się ponosić odpowiedzialność za wszystkie skutki spowodowane zar&oacute;wno swoim, jak i nieuprawnionym dostępem do witryn przez osoby, kt&oacute;rym udostępnisz sw&oacute;j login i hasło</li>\r\n		<li>zobowiązujesz się zawiadomić nas natychmiast o jakimkolwiek nieupoważnionym dostępie do witryn za pomocą Twojego hasła albo o zarejestrowaniu się w witrynach z Twojego konta pocztowego</li>\r\n	</ul>\r\n	</li>\r\n	<li>Respektowanie praw własności, zastrzeżenie praw autorskich<br />\r\n	Udostępniając witryny, zwracamy szczeg&oacute;lną uwagę na konieczność respektowania praw własności intelektualnej. Informujemy, że witryny zawierają dokumenty chronione prawem autorskim, znaki towarowe i inne oryginalne materiały, w szczeg&oacute;lności teksty, zdjęcia i grafikę, a przyjęty w witrynach wyb&oacute;r i układ prezentowanych w nich treści stanowi samoistny przedmiot ochrony prawnoautorskiej. Wszystkie loga, znaki towarowe oraz grafika zamieszczone na tych stronach są własnością ich tw&oacute;rc&oacute;w.<br />\r\n	Serwis zastrzega możliwość blokowania kont w dowolnym czasie bez podania przyczyny.</li>\r\n	<li>Aktywność użytkownik&oacute;w w witrynach, przesyłanie materiał&oacute;w<br />\r\n	Masz prawo przesyłania do witryn swoich informacji, materiał&oacute;w, dokument&oacute;w. Z tym prawem wiąże się z jednej strony możliwość oddziaływania na innych użytkownik&oacute;w witryn, a z drugiej dostęp do pewnych obszar&oacute;w naszego systemu komputerowego, wrażliwych na zachowania, kt&oacute;re mogą zakł&oacute;cić sprawność jego działania.<br />\r\n	W związku z tym w pełni zgadzasz się, że Twoja aktywność w ramach witryn i konta:\r\n	<ul>\r\n		<li>nie może być sprzeczna z normami kultury, z powszechnie obowiązującymi przepisami prawa, nie może być dla innych w żaden spos&oacute;b niebezpieczna i w związku z tym nie będziesz przesyłać do witryn lub wykorzystując mechanizmy witryn żadnych informacji i materiał&oacute;w, naruszających og&oacute;lnie przyjęte normy kultury, wulgarnych, nieprzyzwoitych, obscenicznych, nielegalnych, informacji materiał&oacute;w i wypowiedzi, kt&oacute;re wzywają do nietolerancji, nienawiści, przemocy, okrucieństwa czy naruszania prawa w jakikolwiek spos&oacute;b</li>\r\n		<li>nie możesz naruszać praw innych użytkownik&oacute;w witryn, szczeg&oacute;lnie prawa do poszanowania godności, prywatności, do ochrony danych osobowych, do swobody wypowiedzi i w związku z tym powstrzymasz się od wypowiedzi obraźliwych lub agresywnych oraz nie będziesz zbierać lub usuwać jakichkolwiek danych o innych użytkownikach witryn</li>\r\n		<li>nie będziesz wykorzystywać mechanizm&oacute;w witryn do rozsyłania materiał&oacute;w niechcianych, uznawanych za spam</li>\r\n		<li>zgadzasz się, aby wydawca witryn miał prawo do modyfikacji bądź usunięcia każdego Twojego wpisu bez podania przyczyny</li>\r\n	</ul>\r\n	</li>\r\n	<li>Zawiadomienie o naruszeniu praw autorskich<br />\r\n	Jeżeli uważasz, że Twoje lub czyjekolwiek prawa autorskie, prawa własności intelektualnej zostały w jakikolwiek spos&oacute;b bądź w jakiejkolwiek formie naruszone w witrynach, prosimy o przesłanie informacji w tej sprawie do wydawcy witryn.</li>\r\n	<li>Wyłączenia gwarancji<br />\r\n	W pełni akceptujesz, że wydawca udostępnia witryny taką jaka jest.<br />\r\n	Zdajesz sobie sprawę, że opublikowane w witrynie materiały mogą zawierać informacje nieprawdziwe lub w inny spos&oacute;b nie odpowiadające Twoim potrzebom i oczekiwaniom. Zgadzasz się, że korzystasz z witryny tylko i wyłącznie na własną odpowiedzialność i własne ryzyko.<br />\r\n	Wszystkie informacje, materiały lub usługi dostarczane za pośrednictwem witryn oferowane są bez jakiejkolwiek gwarancji, w szczeg&oacute;lności:<br />\r\n	Wydawca witryn nie zapewnia gwarancji dotyczących prawidłowości lub kompletności jakichkolwiek materiał&oacute;w, informacji lub ustaleń umieszczonych w witrynach<br />\r\n	Wydawca witryny nie gwarantuje, iż każda zamieszczona w w/w witrynach oferta sprosta oczekiwaniom każdego Użytkownika co do merytorycznej zawartości, dokładności czy przydatności uzyskanych informacji.</li>\r\n	<li>Odsyłacze do innych witryn, ogłoszenia i reklamy<br />\r\n	W witrynie są publikowane odsyłacze do innych witryn. Mogą r&oacute;wnież być publikowane ogłoszenia firm - naszych Klient&oacute;w. Wydawca witryny nie ponosi żadnej odpowiedzialności za treść, ścisłość, zawartość lub dostępność informacji, do kt&oacute;rych prowadzą odsyłacze.</li>\r\n	<li>Rozstrzyganie spor&oacute;w<br />\r\n	W związku z możliwością wystąpienia spor&oacute;w związanych z korzystaniem z witryn:\r\n	<ul>\r\n		<li>zgadzasz się, że niniejszy Regulamin korzystania z witryn podlega prawu polskiemu - wszelkie spory mogące wyniknąć z wykonania zobowiązań zawartych w niniejszych warunkach będą rozstrzygane przez właściwy terytorialnie i rzeczowo sąd powszechny w Polsce.</li>\r\n		<li>zgadzasz się, że w przypadku, gdyby kt&oacute;rekolwiek z postanowień tego Regulaminu zostało uznane za niezgodne z prawem przez właściwy sąd, to decyzja sądu nie powoduje uchylenia innych postanowień tego Regulaminu i w związku z tym wszystkie inne postanowienia zachowują swoją moc.</li>\r\n		<li>zgadzasz się, że w przypadku niezgodności pomiędzy warunkami opisanymi w konkretnym dokumencie w witrynach i sygnowanym przez Wydawcę, a warunkami przedstawionymi w niniejszym Regulaminie, zawsze przyjmuje się za ważniejsze warunki określone w dokumencie, z wyjątkiem wyrażonych gdziekolwiek gwarancji, o kt&oacute;rych mowa była w rozdziale Wyłączenia gwarancji.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Zmiany regulaminu korzystania z witryny<br />\r\n	Zgadzasz się, że Wydawca serwisu zastrzega sobie wyłączne prawo do wprowadzania zmian w witrynie w dowolnym czasie bez potrzeby informowania użytkownik&oacute;w. Użytkownicy odpowiedzialni są za regularne przeglądanie tych warunk&oacute;w oraz zastrzeżeń, a następujące po wszelkich zmianach korzystanie z witryn jest r&oacute;wnoznaczne z ich akceptacją.</li>\r\n	<li>Dodawanie obiekt&oacute;w poprzez nasz zesp&oacute;ł<br />\r\n	Godząc się na dodanie oferty poprzez Zesp&oacute;ł w serwisie zakładamy, że prawa własności materiał&oacute;w kt&oacute;re udostępniasz i z kt&oacute;rych korzystasz przy dodaniu oferty (strona internetowa, zdjęcia itd.) należą do Ciebie.<br />\r\n	Godząc się na dodanie oferty poprzez Zesp&oacute;ł w serwisie zobowiązujesz się do posiadania praw własności materiał&oacute;w wykorzystanych przez serwis. W przeciwnym wypadku zobowiązujesz się do zmiany materiał&oacute;w wyświetlanych w w witrynie.</li>\r\n</ol>\r\n\r\n<p><span style="color:#696969;">Ostatnia aktualizacja regulaminu: 5.04.2017</span></p>\r\n', '', ''),
(3, 'Kontakt', 'kontakt', 'contact', '<p><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">Do dziś Republika G&oacute;rskiego Karabachu jest&nbsp;</span><i style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">de facto</i><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">&nbsp;niepodległym państwem posiadającym&nbsp;</span><a href="https://pl.wikipedia.org/wiki/Demokracja" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Demokracja">demokratycznie</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">&nbsp;wybrany&nbsp;</span><a href="https://pl.wikipedia.org/wiki/Rz%C4%85d_(prawo)" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Rząd (prawo)">rząd</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">,</span><a href="https://pl.wikipedia.org/wiki/Gospodarka_rynkowa" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Gospodarka rynkowa">wolnorynkową gospodarkę</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">&nbsp;i wszystkie niezbędne atrybuty suwerenności. Nie jest jednak uznawana przez żadne państwo na świecie, nawet przez&nbsp;</span><a href="https://pl.wikipedia.org/wiki/Armenia" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Armenia">Armenię</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">. System polityczny Republiki G&oacute;rskiego Karabachu cechuje stabilność i względny demokratyzm</span><sup class="reference" id="cite_ref-6" style="line-height: 1em; unicode-bidi: isolate; white-space: nowrap; color: rgb(37, 37, 37); font-family: sans-serif;"><a href="https://pl.wikipedia.org/wiki/G%C3%B3rski_Karabach#cite_note-6" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">[6]</a></sup><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">. Republika cieszy się jednak życzliwością władz Armenii, kt&oacute;ra jest obecnie popierana przez&nbsp;</span><a href="https://pl.wikipedia.org/wiki/Rosja" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Rosja">Rosję</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">&nbsp;ze względu na przynależność obu państw do&nbsp;</span><a href="https://pl.wikipedia.org/wiki/Organizacja_Uk%C5%82adu_o_Bezpiecze%C5%84stwie_Zbiorowym" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Organizacja Układu o Bezpieczeństwie Zbiorowym">Organizacji Układu o Bezpieczeństwie Zbiorowym</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">, z kt&oacute;rego wystąpił Azerbejdżan, aby zostać członkiem konkurencyjnej&nbsp;</span><a href="https://pl.wikipedia.org/wiki/GUAM" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="GUAM">GUAM</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">. Azerbejdżan jest zasobny w ropę naftową i gaz. Europa wiąże z nim nadzieję na zmniejszenie swej energetycznej zależności od Rosji, do czego ta nie chce dopuścić.</span></p>\r\n', '', ''),
(4, 'Przykładowa strona informacyjna', 'przykladowastronainformacyjna', '', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce condimentum molestie nunc, quis bibendum orci aliquam in. Sed eget iaculis velit. Integer id eros blandit, posuere eros sed, interdum ex. Nam mattis urna erat, a sodales leo ullamcorper a. Nunc et erat tellus. Donec maximus, felis in consequat condimentum, nisl sapien faucibus felis, sit amet scelerisque eros lorem et purus. Nam quis lacus sollicitudin turpis dapibus tincidunt. Sed venenatis erat sit amet metus commodo, sit amet porta nunc pretium. Pellentesque sed neque tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sollicitudin sodales magna nec cursus. Nunc molestie, lectus sed faucibus pretium, nibh lacus rutrum ipsum, at tempus magna odio et neque. Vestibulum consequat tristique sem ac consectetur. Duis a luctus tellus. Ut ante lectus, viverra a posuere elementum, condimentum quis eros. Suspendisse tempor fermentum mi in sodales.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Vestibulum auctor molestie lorem, in ultricies dolor pretium a. Mauris sem arcu, imperdiet ac turpis ut, posuere venenatis enim. Aenean dui velit, accumsan quis bibendum rutrum, mollis id leo. Vivamus semper eleifend nunc, non sagittis nisl lobortis sit amet. Sed venenatis massa in tellus malesuada, rhoncus tincidunt ligula iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum mollis orci vitae ornare scelerisque. Ut rutrum odio at fringilla imperdiet. Nulla euismod lectus nec neque pretium egestas ac sit amet massa. Vivamus laoreet eros enim, eu sollicitudin sapien vulputate id. Donec finibus libero nec est posuere venenatis. Etiam ullamcorper interdum nulla in posuere.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Donec porttitor vehicula malesuada. Nulla dapibus magna eget lacus venenatis, et eleifend dolor euismod. Praesent sit amet augue a tortor bibendum consequat. Aenean lectus ante, fermentum in pulvinar sit amet, mollis id sapien. Sed orci lorem, blandit vel sollicitudin nec, lacinia non lectus. Nunc laoreet mauris arcu, vel mattis quam bibendum sit amet. Donec a finibus est.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Ut bibendum neque at orci lobortis faucibus. Nunc a velit ac nunc viverra interdum. Nunc sit amet augue at nunc venenatis scelerisque. Quisque laoreet turpis quis purus fringilla dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque sit amet sagittis est, in tempus mauris. In massa ante, scelerisque ac massa in, cursus ullamcorper purus. Cras luctus consequat ipsum, nec cursus justo convallis ac.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px;">Fusce ac nisi id lorem tempus suscipit ac id ex. Quisque nec erat libero. Vestibulum venenatis augue et volutpat volutpat. In vel quam vel mi dignissim ultricies. Etiam quis nisl consequat eros elementum dapibus. Fusce fringilla sed dolor eu pulvinar. Ut nulla nisl, pretium quis ligula nec, pretium convallis mauris. Nunc et arcu lorem. Morbi ut tincidunt tortor. Aenean massa mi, bibendum nec iaculis in, auctor at est.</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs_mails`
--

CREATE TABLE IF NOT EXISTS `logs_mails` (
  `id` int(11) NOT NULL,
  `receiver` varchar(64) NOT NULL,
  `action` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs_offers`
--

CREATE TABLE IF NOT EXISTS `logs_offers` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs_users`
--

CREATE TABLE IF NOT EXISTS `logs_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mails`
--

CREATE TABLE IF NOT EXISTS `mails` (
  `name` varchar(64) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mails`
--

INSERT INTO `mails` (`name`, `full_name`, `subject`, `message`) VALUES
('contact_form', 'Contact form', 'Wiadomość z formularza kontaktowego strony {title}', '<p>Witaj!</p>\r\n\r\n<p>Została do Ciebie wysłana wiadomość z formularza kontaktowego ze strony {base_url}</p>\r\n\r\n<p>Nadawca: {name}</p>\r\n\r\n<p>Adres email: {email}</p>\r\n\r\n<p>Wiadomość: {message}</p>\r\n'),
('finish_promote', 'Finish promote', 'Zakończenie promowania oferty {offer_name}', '<p>Witaj,</p>\r\n\r\n<p>Twoja oferta <a href="{offer_url}">{offer_url}</a>&nbsp;na stronie&nbsp;<a href="{base_url}">{base_url}</a>&nbsp;przestała być promowana.</p>\r\n\r\n<p>Wyr&oacute;żnij się na tle konkurencji i ponownie wypromuj swoją ofertę!</p>\r\n\r\n<p>Więcej szczeg&oacute;ł&oacute;w na stronie&nbsp;<a href="{offer_url}">{offer_url}</a>&nbsp;w zakładce &quot;Promuj&quot;</p>\r\n\r\n<p>Pozdrawiamy<br />\r\n{title}<br />\r\n<br />\r\n<a href="{base_url}">{link_logo}</a></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('offer', 'Offer', 'Wiadomość do oferty {offer_name}', '<p>Witaj!</p>\r\n\r\n<p>Została do Ciebie wysłana wiadomość ze strony <a href="{base_url}">{base_url}</a> dotycząca oferty <a href="{offer_url}">{offer_url}</a></p>\r\n\r\n<p>Nadawca: {name}</p>\r\n\r\n<p>Adres email: {email}</p>\r\n\r\n<p>Wiadomość: {message}</p>\r\n'),
('register', 'Register', 'Witamy na stronie {title}', '<p>Witaj na stronie <a href="{base_url}">{title}</a>!<br />\r\n<br />\r\nDziękujemy za rejestrację.<br />\r\n<br />\r\nŻeby ją dokończyć kliknij w link: <a href="{activation_link}">{activation_link}</a><br />\r\n<br />\r\nInformujemy że link aktywacyjny jest ważny 24 godziny, po tym czasie nieaktywowane konta zostają usuwane.<br />\r\nJeśli to nie Ty się rejestrowałeś to zignoruj tą wiadomość<br />\r\n<br />\r\nPozdrawiamy<br />\r\n{title}<br />\r\n<br />\r\n<a href="{base_url}">{link_logo}</a></p>\r\n'),
('register_fb', 'Register by Facebook', 'Witamy na stronie {title}', '<p>Witaj na stronie <a href="{base_url}">{title}</a>!<br />\r\n<br />\r\nDziękujemy za rejestrację poprzez konto Facebook.</p>\r\n\r\n<p>Twoje losowo wygenerowane hasło to: {password}<br />\r\n<br />\r\nPozdrawiamy<br />\r\n{title}<br />\r\n<br />\r\n<a href="{base_url}">{link_logo}</a></p>\r\n'),
('reset_password', 'Reset password', 'Reset hasła - {title}', '<p>Witaj {username}!<br />\r\n<br />\r\nAby zresetować swoje hasło do serwisu <a href="{base_url}">{title}</a> kliknij w następujący link: <a href="{reset_password_link}">{reset_password_link}</a><br />\r\n<br />\r\nPozdrawiamy<br />\r\n{title}</p>\r\n'),
('start_promote', 'Start promote', 'Rozpoczęcie promowania oferty {offer_name}', '<p>Witaj,</p>\r\n\r\n<p>Twoja oferta <a href="{offer_url}">{offer_url}</a>&nbsp;na stronie&nbsp;<a href="{base_url}">{base_url}</a>&nbsp;zaczęła być promowana.</p>\r\n\r\n<p>Dzięki temu będzie się wyr&oacute;żniać na tle konkurencji!</p>\r\n\r\n<p>Pozdrawiamy<br />\r\n{title}<br />\r\n<br />\r\n<a href="{base_url}">{link_logo}</a></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mails`
--

CREATE TABLE IF NOT EXISTS `mails_queue` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `receiver` VARCHAR(64) NOT NULL,
  `action` VARCHAR(32) NOT NULL,
  `data` TEXT NOT NULL,
  `priority` INT(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `name_url` varchar(128) NOT NULL,
  `address` varchar(512),
  `address_lat` float(10,6),
  `address_long` float(10,6),
  `url` varchar(128),
  `phone` varchar(32),
  `phone_mobile` varchar(32),
  `email` varchar(64),
  `category` varchar(64),
  `state` varchar(64),
  `type` varchar(64),
  `description` text,
  `active` int(1) NOT NULL,
  `promoted` int(1),
  `promoted_date_end` date,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_categories`
--

CREATE TABLE IF NOT EXISTS `offers_categories` (
  `id` int(11) NOT NULL,
  `name_url` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `offers_categories`
--

INSERT INTO `offers_categories` (`id`, `name_url`, `name`) VALUES
(1, 'gory', 'Góry'),
(2, 'jeziora', 'Jeziora'),
(3, 'lasy', 'Lasy'),
(4, 'miasto', 'Miasto'),
(5, 'morze', 'Morze'),
(6, 'wies', 'Wieś');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_options`
--

CREATE TABLE IF NOT EXISTS `offers_options` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `offers_options`
--

INSERT INTO `offers_options` (`id`, `name`) VALUES
(3, 'Internet WiFi'),
(4, 'Komputer z Internetem'),
(5, 'Telewizor / sala telewizyjna'),
(6, 'Parking'),
(7, 'Pokoje z własnymi łazienkami'),
(8, 'Room serwis'),
(9, 'Restauracja / wyżywienie na miejscu'),
(10, 'Dostęp do kuchni'),
(11, 'Dostęp do lodówki'),
(12, 'Pralnia'),
(13, 'Prasowalnia'),
(14, 'Grill'),
(15, 'Miejsce na ognisko'),
(16, 'Obiekt przystosowany dla osób niepełnosprawnych'),
(17, 'Ogród'),
(18, 'Plac zabaw dla dzieci'),
(19, 'Piaskownica'),
(20, 'Sprzęt plażowy'),
(21, 'Sala konferencyjna'),
(22, 'Klimatyzacja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_options_values`
--

CREATE TABLE IF NOT EXISTS `offers_options_values` (
  `offer_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_price_list`
--

CREATE TABLE IF NOT EXISTS `offers_price_list` (
  `offer_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `price_from` decimal(10,2) NOT NULL,
  `price_to` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_state`
--

CREATE TABLE IF NOT EXISTS `offers_state` (
  `id` int(11) NOT NULL,
  `name_url` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `offers_state`
--

INSERT INTO `offers_state` (`id`, `name_url`, `name`) VALUES
(1, 'dolnoslaskie', 'Dolnośląskie'),
(2, 'kujawskopomorskie', 'Kujawsko-pomorskie'),
(3, 'lodzkie', 'Łódzkie'),
(4, 'lubelskie', 'Lubelskie'),
(5, 'lubuskie', 'Lubuskie'),
(6, 'malopolskie', 'Małopolskie'),
(7, 'mazowieckie', 'Mazowieckie'),
(8, 'opolskie', 'Opolskie'),
(9, 'podkarpackie', 'Podkarpackie'),
(10, 'podlaskie', 'Podlaskie'),
(11, 'pomorskie', 'Pomorskie'),
(12, 'slaskie', 'Śląskie'),
(13, 'swietokrzyskie', 'Świętokrzyskie'),
(14, 'warminskomazurskie', 'Warmińsko-mazurskie'),
(15, 'wielkopolskie', 'Wielkopolskie'),
(16, 'zachodniopomorskie', 'Zachodniopomorskie'),
(17, 'zagranica', '- Zagranica');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_type`
--

CREATE TABLE IF NOT EXISTS `offers_type` (
  `id` int(11) NOT NULL,
  `name_url` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `offers_type`
--

INSERT INTO `offers_type` (`id`, `name_url`, `name`) VALUES
(1, 'agroturystyka', 'Agroturystyka'),
(2, 'akademikbursa', 'Akademik, Bursa'),
(3, 'apartament', 'Apartament'),
(4, 'domdowynajecia', 'Dom do wynajęcia'),
(5, 'domletniskowy', 'Dom letniskowy'),
(6, 'domwczasowy', 'Dom wczasowy'),
(7, 'hostel', 'Hostel'),
(8, 'hotel', 'Hotel'),
(9, 'inny', 'Inny'),
(10, 'internat', 'Internat'),
(11, 'kwatera-prywatna', 'Kwatera prywatna'),
(12, 'mieszkaniedowynajecia', 'Mieszkanie do wynajęcia'),
(13, 'motel', 'Motel'),
(14, 'noclegpracowniczy', 'Nocleg pracowniczy'),
(15, 'osrodekwypoczynkowy', 'Ośrodek wypoczynkowy'),
(16, 'pensjonat', 'Pensjonat'),
(17, 'pokojegoscinne', 'Pokoje gościnne'),
(18, 'polenamiotowecamping', 'Pole namiotowe, Camping'),
(19, 'sanatoriumuzdrowisko', 'Sanatorium, Uzdrowisko'),
(20, 'schronisko', 'Schronisko'),
(21, 'spa', 'SPA'),
(22, 'stanica', 'Stanica'),
(23, 'willa', 'Willa'),
(24, 'zajazd', 'Zajazd'),
(25, 'zamekpalacdworek', 'Zamek, pałac, dworek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payments_dotpay`
--

CREATE TABLE IF NOT EXISTS `payments_dotpay` (
  `id` int(11) NOT NULL,
  `dotpay_id` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `operation_status` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `operation_number` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `offer_id` int(11) NOT NULL,
  `operation_amount` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `operation_original_amount` varchar(14) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `operation_datetime` datetime NOT NULL,
  `date_URLC` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_id` int(11),
  `position` int(11),
  `thumb` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reset_password`
--

CREATE TABLE IF NOT EXISTS `reset_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `used` int(1),
  `active` int(1) NOT NULL,
  `code` varchar(32) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;



-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `session_offer`
--

CREATE TABLE IF NOT EXISTS `session_offer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `session_user`
--

CREATE TABLE IF NOT EXISTS `session_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11),
  `code` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('add_offers_not_logged', '1'),
('ads_1', ''),
('ads_2', ''),
('ads_3', ''),
('ads_4', ''),
('ads_side_1', ''),
('ads_side_2', ''),
('analytics', ''),
('automatically_activate_offers', '1'),
('base_url', ''),
('black_list_email', ''),
('black_list_ip', ''),
('check_ip_user', '1'),
('code_body', ''),
('code_head', ''),
('code_style', ''),
('currency', 'zł'),
('description', 'Skrypt noclegowy FESTA - internetowa baza noclegów! Znajdź wymarzone miejsce na urlop! '),
('dotpay_currency', 'PLN'),
('dotpay_id', ''),
('dotpay_pin', ''),
('dotpay_test_mode', ''),
('email', ''),
('enable_articles', '1'),
('facebook_api', ''),
('facebook_lang', 'pl_PL'),
('facebook_login', ''),
('facebook_secret', ''),
('facebook_side_panel', ''),
('favicon', '/upload/images/favicon.png'),
('footer_bottom', '<p>Skrypt noclegowy FESTA</p>\r\n'),
('footer_text', ''),
('footer_top', '<p>Znajdź wymarzone miejsce na urlop! Nasza baza prezentuje obiekty turystyczne z całej Polski a także z zagranicy. Znajdziesz tu ośrodki wypoczynkowe, pensjonaty, wille, kwatery prywatne, a także gospodarstwa agroturystyczne i hotele.</p>\r\n'),
('generate_sitemap', '1'),
('google_maps', ''),
('google_maps_api', ''),
('google_maps_api2', ''),
('google_maps_lat', '52.072754'),
('google_maps_long', '19.028321'),
('google_maps_zoom_add', '5'),
('google_maps_zoom_offer', '10'),
('google_translate', '1'),
('hide_data_not_logged', '0'),
('hide_email', '1'),
('hide_phone', '0'),
('hide_views', '0'),
('keywords', 'nocleg, noclegi, skrypt noclegowy, skrypt, noclegowy'),
('lang', 'pl'),
('limit_page', '10'),
('limit_page_index', '6'),
('logo', '/upload/images/logo.png'),
('logo_facebook', '/upload/images/logo.png'),
('mail_attachment', '1'),
('max_price_list', '5'),
('photo_add', '1'),
('photo_max', '10'),
('photo_max_height', '0'),
('photo_max_size', '2000'),
('photo_max_width', '0'),
('photo_quality', '100'),
('promote_by_dotpay', '0'),
('promote_cost', '0'),
('promote_days', '31'),
('reviews_facebook', '1'),
('rss', '1'),
('rodo_alert', ''),
('rodo_alert_text', '<p>Szanowny użytkowniku,<br />\r\npragniemy Cię poinformować, że nasz serwis internetowy może personalizować treści marketingowe do Twoich potrzeb. W związku z tym danymi osobowymi, kt&oacute;re przetwarzamy są np. Tw&oacute;j adres IP, dane pozyskiwane na podstawie plik&oacute;w cookies lub podobnych mechanizm&oacute;w na Twoim urządzeniu o ile pozwolą one na zidentyfikowanie Ciebie.&nbsp;<br />\r\nJeżeli klikniesz przycisk &bdquo;Wyrażam zgodę na przetwarzanie moich danych osobowych&rdquo; lub zamkniesz to okno, to wyrazisz zgodę na przetwarzanie Twoich danych przez właściciela witryny i jego zaufanych partner&oacute;w.<br />\r\nWyrażenie zgody jest dobrowolne. Masz prawo do: dostępu do Twoich danych, ich sprostowania oraz usunięcia. Więcej informacji odnośnie przetwarzania danych osobowych znajdziesz w naszej <a href=\"/info/1,polityka-prywatnosci\">Polityce Prywatności.</a></p>\r\n\r\n<p>Lista zaufanych partner&oacute;w:<br />\r\nGoogle - na stronie są zamieszczone kody reklam Adsense oraz Google Analytics, kt&oacute;re mają na celu wyświetlanie spersonalizowanych treści oraz zbieranie informacji o zachowaniu użytkownika w celu poprawy strony.<br />\r\nFacebook - na stronie zamieszczony jest kod Facebook mający na celu wyświetlanie boksu z komentarzami oraz panelu bocznego.</p>\r\n'),
('search_box_address', '1'),
('search_box_category', '1'),
('search_box_distance', '1'),
('search_box_name', '1'),
('search_box_options', '1'),
('search_box_price', '1'),
('search_box_state', '1'),
('search_box_type', '1'),
('smtp', '0'),
('smtp_host', ''),
('smtp_mail', ''),
('smtp_password', ''),
('smtp_port','587'),
('smtp_secure','tls'),
('smtp_user', ''),
('social_facebook', '1'),
('social_pinterest', '1'),
('social_twitter', '1'),
('social_wykop', '1'),
('template', 'default'),
('title', 'Skrypt noclegowy Festa'),
('url_facebook', ''),
('url_privacy_policy', 'politykaprywatnosci'),
('url_rules', 'regulamin'),
('watermark', '/upload/images/watermark.png'),
('watermark_add', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64),
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `active` int(1),
  `moderator` int(1),
  `activation_code` varchar(32) NOT NULL,
  `register_fb` int(1),
  `register_ip` varchar(40) NOT NULL,
  `activation_date` datetime,
  `activation_ip` varchar(40),
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_session`
--
ALTER TABLE `cms_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_page`
--
ALTER TABLE `index_page`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_mails`
--
ALTER TABLE `logs_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_offers`
--
ALTER TABLE `logs_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_users`
--
ALTER TABLE `logs_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `offers` 
  ADD INDEX(`active`);

--
-- Indexes for table `offers_categories`
--
ALTER TABLE `offers_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_options`
--
ALTER TABLE `offers_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_state`
--
ALTER TABLE `offers_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_type`
--
ALTER TABLE `offers_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_dotpay`
--
ALTER TABLE `payments_dotpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_offer`
--
ALTER TABLE `session_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_user`
--
ALTER TABLE `session_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `cms_session`
--
ALTER TABLE `cms_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `logs_mails`
--
ALTER TABLE `logs_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `logs_offers`
--
ALTER TABLE `logs_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `logs_users`
--
ALTER TABLE `logs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `offers_categories`
--
ALTER TABLE `offers_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `offers_options`
--
ALTER TABLE `offers_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;


ALTER TABLE `offers_price_list` ADD INDEX(`offer_id`);
--
-- AUTO_INCREMENT dla tabeli `offers_state`
--
ALTER TABLE `offers_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `offers_type`
--
ALTER TABLE `offers_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT dla tabeli `payments_dotpay`
--
ALTER TABLE `payments_dotpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

ALTER TABLE `photos` ADD INDEX(`offer_id`);
--
-- AUTO_INCREMENT dla tabeli `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `session_offer`
--
ALTER TABLE `session_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `session_user`
--
ALTER TABLE `session_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
