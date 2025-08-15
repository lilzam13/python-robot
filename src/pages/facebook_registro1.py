"""
Created by: Liliana Zamora
date: 30 July, 2025
nomenclatura:
txt: caja de texto
btn: boton
lbl: label
opt: option buttons
dpd: dropdown
Buena practica: colocarlo en el orden
"""
class Registro:
    img_logo_xpath = "//*[@id='content']/div[1]/img"
    lbl_title_xpath = "//*[@id='content']/div[2]/div/div[1]/div[1]"
    lbl_slogan_xpath = "//*[@id='content']/div[2]/div/div[1]/div[2]"
    txt_name_name = "firstname"
    txt_lastname_name = "lastname"
    dpd_day_xpath = "//*[@id='day']"
    dpd_month_xpath = "//select[@id='month']"
    dpd_year_xpath = "//*[@id='year']"
    opt_sex_male_xpath = "//*[@id='u_0_d_Eu']/span[2]/label"
    opt_sex_famale_xpath = "//*[@id='sex']"
    txt_email_name = "reg_email__"
    txt_password_xpath = "//input[@id='password_step_input']"
    btn_signup_xpath = "//*[@id='u_0_n_PF']"    

