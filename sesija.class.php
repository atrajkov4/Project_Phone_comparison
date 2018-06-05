<?php

class Sesija {

    const KORISNIK = "korisnik";
    const KOSARICA = "kosarica";
    const SESSION_NAME = "prijava_sesija";

    static function kreirajSesiju() {
        session_name(self::SESSION_NAME);

        if (session_id() == "") {
            session_start();
        }
    }

    static function kreirajKorisnika($korisnik) {
        self::kreirajSesiju();
        $_SESSION[self::KORISNIK] = $korisnik;
    }

    static function kreirajKosaricu($kosarica) {
        self::kreirajSesiju();
        $_SESSION[self::KOSARICA] = $kosarica;
    }

    static function dajKorisnika() {
        self::kreirajSesiju();
        if (isset($_SESSION[self::KORISNIK])) {
            $korisnik = $_SESSION[self::KORISNIK];
        } else {
            return null;
        }
        return $korisnik;
    }

    static function dajKosaricu() {
        self::kreirajSesiju();
        if (isset($_SESSION[self::KOSARICA])) {
            $kosarica = $_SESSION[self::KOSARICA];
        } else {
            return null;
        }
        return $kosarica;
    }

    /**
     * Odjavljuje korisnika tj. briše sesiju
     */
    static function obrisiSesiju() {
        session_name(self::SESSION_NAME);

        if (session_id() != "") {
            session_unset();
            session_destroy();
        }
    }

}
