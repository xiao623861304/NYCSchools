//
//  SchoolModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

typealias Schools = [School]

// MARK: - School
struct School: Codable {
    var dbn: String?
    var schoolName: String?
    var boro: String?
    var overviewParagraph: String?
    var school10ThSeats: String?
    var academicopportunities1: String?
    var academicopportunities2: String?
    var ellPrograms: String?
    var neighborhood: String?
    var buildingCode: String?
    var location: String?
    var phoneNumber: String?
    var faxNumber: String?
    var schoolEmail: String?
    var website: String?
    var subway: String?
    var bus: String?
    var grades2018: String?
    var finalgrades: String?
    var totalStudents: String?
    var extracurricularActivities: String?
    var schoolSports: String?
    var attendanceRate: String?
    var pctStuEnoughVariety: String?
    var pctStuSafe: String?
    var schoolAccessibilityDescription: String?
    var directions1: String?
    var requirement11: String?
    var requirement21: String?
    var requirement31: String?
    var requirement41: String?
    var requirement51: String?
    var offerRate1: String?
    var program1: String?
    var code1: String?
    var interest1: String?
    var method1: String?
    var seats9Ge1: String?
    var grade9Gefilledflag1: String?
    var grade9Geapplicants1: String?
    var seats9Swd1: String?
    var grade9Swdfilledflag1: String?
    var grade9Swdapplicants1: String?
    var seats101: String?
    var admissionspriority11: String?
    var admissionspriority21: String?
    var admissionspriority31: String?
    var grade9Geapplicantsperseat1: String?
    var grade9Swdapplicantsperseat1: String?
    var primaryAddressLine1: String?
    var city: String?
    var zip: String?
    var stateCode: String?
    var latitude: String?
    var longitude: String?
    var communityBoard: String?
    var councilDistrict: String?
    var censusTract: String?
    var bin: String?
    var bbl: String?
    var nta: String?
    var borough: String?
    var academicopportunities3: String?
    var languageClasses: String?
    var addtlInfo1: String?
    var transfer: String?
    var eligibility1: String?
    var academicopportunities4: String?
    var academicopportunities5: String?
    var diplomaendorsements: String?
    var sharedSpace: String?
    var startTime: String?
    var endTime: String?
    var psalSportsBoys: String?
    var psalSportsGirls: String?
    var psalSportsCoed: String?
    var graduationRate: String?
    var collegeCareerRate: String?
    var girls: String?
    var advancedplacementCourses: String?
    var campusName: String?
    var prgdesc1: String?
    var admissionspriority41: String?
    var pbat: String?
    var international: String?
    var program2: String?
    var code2: String?
    var interest2: String?
    var method2: String?
    var seats9Ge2: String?
    var grade9Gefilledflag2: String?
    var grade9Geapplicants2: String?
    var seats9Swd2: String?
    var grade9Swdfilledflag2: String?
    var grade9Swdapplicants2: String?
    var seats102: String?
    var eligibility2: String?
    var grade9Geapplicantsperseat2: String?
    var grade9Swdapplicantsperseat2: String?
    var prgdesc2: String?
    var prgdesc3: String?
    var requirement12: String?
    var requirement22: String?
    var requirement32: String?
    var offerRate2: String?
    var program3: String?
    var code3: String?
    var interest3: String?
    var method3: String?
    var seats9Ge3: String?
    var grade9Gefilledflag3: String?
    var grade9Geapplicants3: String?
    var seats9Swd3: String?
    var grade9Swdfilledflag3: String?
    var grade9Swdapplicants3: String?
    var seats103: String?
    var admissionspriority12: String?
    var admissionspriority13: String?
    var admissionspriority22: String?
    var grade9Geapplicantsperseat3: String?
    var grade9Swdapplicantsperseat3: String?
    var admissionspriority32: String?
    var prgdesc4: String?
    var prgdesc5: String?
    var prgdesc6: String?
    var requirement13: String?
    var requirement14: String?
    var requirement15: String?
    var requirement16: String?
    var requirement23: String?
    var requirement24: String?
    var requirement25: String?
    var requirement26: String?
    var requirement33: String?
    var requirement34: String?
    var requirement35: String?
    var requirement36: String?
    var requirement42: String?
    var requirement43: String?
    var requirement44: String?
    var requirement45: String?
    var requirement46: String?
    var program4: String?
    var program5: String?
    var program6: String?
    var code4: String?
    var code5: String?
    var code6: String?
    var interest4: String?
    var interest5: String?
    var interest6: String?
    var method4: String?
    var method5: String?
    var method6: String?
    var seats9Ge4: String?
    var seats9Ge5: String?
    var seats9Ge6: String?
    var grade9Gefilledflag4: String?
    var grade9Gefilledflag5: String?
    var grade9Gefilledflag6: String?
    var grade9Geapplicants4: String?
    var grade9Geapplicants5: String?
    var grade9Geapplicants6: String?
    var seats9Swd4: String?
    var seats9Swd5: String?
    var seats9Swd6: String?
    var grade9Swdfilledflag4: String?
    var grade9Swdfilledflag5: String?
    var grade9Swdfilledflag6: String?
    var grade9Swdapplicants4: String?
    var grade9Swdapplicants5: String?
    var grade9Swdapplicants6: String?
    var seats104: String?
    var seats105: String?
    var seats106: String?
    var admissionspriority14: String?
    var admissionspriority15: String?
    var admissionspriority16: String?
    var auditioninformation1: String?
    var auditioninformation2: String?
    var auditioninformation3: String?
    var auditioninformation4: String?
    var auditioninformation5: String?
    var auditioninformation6: String?
    var grade9Geapplicantsperseat4: String?
    var grade9Geapplicantsperseat5: String?
    var grade9Geapplicantsperseat6: String?
    var grade9Swdapplicantsperseat4: String?
    var grade9Swdapplicantsperseat5: String?
    var grade9Swdapplicantsperseat6: String?
    var earlycollege: String?
    var admissionspriority51: String?
    var admissionspriority61: String?
    var offerRate3: String?
    var offerRate4: String?
    var admissionspriority23: String?
    var admissionspriority24: String?
    var ptech: String?
    var offerRate5: String?
    var offerRate6: String?
    var program7: String?
    var code7: String?
    var interest7: String?
    var method7: String?
    var seats9Ge7: String?
    var grade9Gefilledflag7: String?
    var grade9Geapplicants7: String?
    var seats9Swd7: String?
    var grade9Swdfilledflag7: String?
    var grade9Swdapplicants7: String?
    var seats107: String?
    var admissionspriority17: String?
    var admissionspriority25: String?
    var admissionspriority26: String?
    var admissionspriority34: String?
    var admissionspriority44: String?
    var grade9Geapplicantsperseat7: String?
    var grade9Swdapplicantsperseat7: String?
    var boys: String?
    var directions2: String?
    var requirement52: String?
    var prgdesc7: String?
    var directions7: String?
    var requirement17: String?
    var program8: String?
    var code8: String?
    var interest8: String?
    var method8: String?
    var seats9Ge8: String?
    var grade9Gefilledflag8: String?
    var grade9Geapplicants8: String?
    var seats9Swd8: String?
    var grade9Swdfilledflag8: String?
    var grade9Swdapplicants8: String?
    var seats108: String?
    var admissionspriority18: String?
    var grade9Geapplicantsperseat8: String?
    var grade9Swdapplicantsperseat8: String?
    var commonAudition1: String?
    var geoeligibility: String?
    var specialized: String?
    var seats1Specialized: String?
    var applicants1Specialized: String?
    var appperseat1Specialized: String?
    var admissionspriority42: String?
    var admissionspriority52: String?
    var commonAudition4: String?
    var commonAudition5: String?
    var requirement53: String?
    var requirement63: String?
    var requirement27: String?
    var requirement37: String?
    var admissionspriority71: String?
    var eligibility3: String?
    var admissionspriority35: String?
    var requirement62: String?
    var requirement54: String?
    var commonAudition2: String?
    var directions3: String?
    var directions4: String?
    var admissionspriority33: String?
    var admissionspriority36: String?
    var admissionspriority46: String?
    var admissionspriority56: String?
    var commonAudition3: String?
    var prgdesc8: String?
    var admissionspriority27: String?
    var admissionspriority37: String?
    var admissionspriority54: String?
    var admissionspriority64: String?
    var admissionspriority74: String?
    var requirement61: String?
    var eligibility4: String?
    var requirement47: String?
    var requirement55: String?
    var eligibility5: String?
    var eligibility6: String?
    var eligibility7: String?
    var auditioninformation7: String?
    var commonAudition6: String?
    var commonAudition7: String?
    var prgdesc9: String?
    var prgdesc10: String?
    var requirement18: String?
    var requirement28: String?
    var requirement38: String?
    var offerRate7: String?
    var offerRate8: String?
    var offerRate9: String?
    var program9: String?
    var program10: String?
    var code9: String?
    var code10: String?
    var interest9: String?
    var interest10: String?
    var method9: String?
    var method10: String?
    var seats9Ge9: String?
    var seats9Ge10: String?
    var grade9Gefilledflag9: String?
    var grade9Gefilledflag10: String?
    var grade9Geapplicants9: String?
    var grade9Geapplicants10: String?
    var seats9Swd9: String?
    var seats9Swd10: String?
    var grade9Swdfilledflag9: String?
    var grade9Swdfilledflag10: String?
    var grade9Swdapplicants9: String?
    var grade9Swdapplicants10: String?
    var seats109: String?
    var seats1010: String?
    var admissionspriority19: String?
    var admissionspriority110: String?
    var admissionspriority28: String?
    var admissionspriority29: String?
    var grade9Geapplicantsperseat9: String?
    var grade9Geapplicantsperseat10: String?
    var grade9Swdapplicantsperseat9: String?
    var grade9Swdapplicantsperseat10: String?
    var admissionspriority43: String?
    var directions5: String?
    var directions6: String?
    var requirement56: String?
    var seats2Specialized: String?
    var seats3Specialized: String?
    var seats4Specialized: String?
    var seats5Specialized: String?
    var seats6Specialized: String?
    var applicants2Specialized: String?
    var applicants3Specialized: String?
    var applicants4Specialized: String?
    var applicants5Specialized: String?
    var applicants6Specialized: String?
    var appperseat2Specialized: String?
    var appperseat3Specialized: String?
    var appperseat4Specialized: String?
    var appperseat5Specialized: String?
    var appperseat6Specialized: String?
    var admissionspriority53: String?
    var admissionspriority62: String?
    var admissionspriority63: String?
    var requirement57: String?
    var requirement67: String?

    enum CodingKeys: String, CodingKey {
        case dbn = "dbn"
        case schoolName = "school_name"
        case boro = "boro"
        case overviewParagraph = "overview_paragraph"
        case school10ThSeats = "school_10th_seats"
        case academicopportunities1 = "academicopportunities1"
        case academicopportunities2 = "academicopportunities2"
        case ellPrograms = "ell_programs"
        case neighborhood = "neighborhood"
        case buildingCode = "building_code"
        case location = "location"
        case phoneNumber = "phone_number"
        case faxNumber = "fax_number"
        case schoolEmail = "school_email"
        case website = "website"
        case subway = "subway"
        case bus = "bus"
        case grades2018 = "grades2018"
        case finalgrades = "finalgrades"
        case totalStudents = "total_students"
        case extracurricularActivities = "extracurricular_activities"
        case schoolSports = "school_sports"
        case attendanceRate = "attendance_rate"
        case pctStuEnoughVariety = "pct_stu_enough_variety"
        case pctStuSafe = "pct_stu_safe"
        case schoolAccessibilityDescription = "school_accessibility_description"
        case directions1 = "directions1"
        case requirement11 = "requirement1_1"
        case requirement21 = "requirement2_1"
        case requirement31 = "requirement3_1"
        case requirement41 = "requirement4_1"
        case requirement51 = "requirement5_1"
        case offerRate1 = "offer_rate1"
        case program1 = "program1"
        case code1 = "code1"
        case interest1 = "interest1"
        case method1 = "method1"
        case seats9Ge1 = "seats9ge1"
        case grade9Gefilledflag1 = "grade9gefilledflag1"
        case grade9Geapplicants1 = "grade9geapplicants1"
        case seats9Swd1 = "seats9swd1"
        case grade9Swdfilledflag1 = "grade9swdfilledflag1"
        case grade9Swdapplicants1 = "grade9swdapplicants1"
        case seats101 = "seats101"
        case admissionspriority11 = "admissionspriority11"
        case admissionspriority21 = "admissionspriority21"
        case admissionspriority31 = "admissionspriority31"
        case grade9Geapplicantsperseat1 = "grade9geapplicantsperseat1"
        case grade9Swdapplicantsperseat1 = "grade9swdapplicantsperseat1"
        case primaryAddressLine1 = "primary_address_line_1"
        case city = "city"
        case zip = "zip"
        case stateCode = "state_code"
        case latitude = "latitude"
        case longitude = "longitude"
        case communityBoard = "community_board"
        case councilDistrict = "council_district"
        case censusTract = "census_tract"
        case bin = "bin"
        case bbl = "bbl"
        case nta = "nta"
        case borough = "borough"
        case academicopportunities3 = "academicopportunities3"
        case languageClasses = "language_classes"
        case addtlInfo1 = "addtl_info1"
        case transfer = "transfer"
        case eligibility1 = "eligibility1"
        case academicopportunities4 = "academicopportunities4"
        case academicopportunities5 = "academicopportunities5"
        case diplomaendorsements = "diplomaendorsements"
        case sharedSpace = "shared_space"
        case startTime = "start_time"
        case endTime = "end_time"
        case psalSportsBoys = "psal_sports_boys"
        case psalSportsGirls = "psal_sports_girls"
        case psalSportsCoed = "psal_sports_coed"
        case graduationRate = "graduation_rate"
        case collegeCareerRate = "college_career_rate"
        case girls = "girls"
        case advancedplacementCourses = "advancedplacement_courses"
        case campusName = "campus_name"
        case prgdesc1 = "prgdesc1"
        case admissionspriority41 = "admissionspriority41"
        case pbat = "pbat"
        case international = "international"
        case program2 = "program2"
        case code2 = "code2"
        case interest2 = "interest2"
        case method2 = "method2"
        case seats9Ge2 = "seats9ge2"
        case grade9Gefilledflag2 = "grade9gefilledflag2"
        case grade9Geapplicants2 = "grade9geapplicants2"
        case seats9Swd2 = "seats9swd2"
        case grade9Swdfilledflag2 = "grade9swdfilledflag2"
        case grade9Swdapplicants2 = "grade9swdapplicants2"
        case seats102 = "seats102"
        case eligibility2 = "eligibility2"
        case grade9Geapplicantsperseat2 = "grade9geapplicantsperseat2"
        case grade9Swdapplicantsperseat2 = "grade9swdapplicantsperseat2"
        case prgdesc2 = "prgdesc2"
        case prgdesc3 = "prgdesc3"
        case requirement12 = "requirement1_2"
        case requirement22 = "requirement2_2"
        case requirement32 = "requirement3_2"
        case offerRate2 = "offer_rate2"
        case program3 = "program3"
        case code3 = "code3"
        case interest3 = "interest3"
        case method3 = "method3"
        case seats9Ge3 = "seats9ge3"
        case grade9Gefilledflag3 = "grade9gefilledflag3"
        case grade9Geapplicants3 = "grade9geapplicants3"
        case seats9Swd3 = "seats9swd3"
        case grade9Swdfilledflag3 = "grade9swdfilledflag3"
        case grade9Swdapplicants3 = "grade9swdapplicants3"
        case seats103 = "seats103"
        case admissionspriority12 = "admissionspriority12"
        case admissionspriority13 = "admissionspriority13"
        case admissionspriority22 = "admissionspriority22"
        case grade9Geapplicantsperseat3 = "grade9geapplicantsperseat3"
        case grade9Swdapplicantsperseat3 = "grade9swdapplicantsperseat3"
        case admissionspriority32 = "admissionspriority32"
        case prgdesc4 = "prgdesc4"
        case prgdesc5 = "prgdesc5"
        case prgdesc6 = "prgdesc6"
        case requirement13 = "requirement1_3"
        case requirement14 = "requirement1_4"
        case requirement15 = "requirement1_5"
        case requirement16 = "requirement1_6"
        case requirement23 = "requirement2_3"
        case requirement24 = "requirement2_4"
        case requirement25 = "requirement2_5"
        case requirement26 = "requirement2_6"
        case requirement33 = "requirement3_3"
        case requirement34 = "requirement3_4"
        case requirement35 = "requirement3_5"
        case requirement36 = "requirement3_6"
        case requirement42 = "requirement4_2"
        case requirement43 = "requirement4_3"
        case requirement44 = "requirement4_4"
        case requirement45 = "requirement4_5"
        case requirement46 = "requirement4_6"
        case program4 = "program4"
        case program5 = "program5"
        case program6 = "program6"
        case code4 = "code4"
        case code5 = "code5"
        case code6 = "code6"
        case interest4 = "interest4"
        case interest5 = "interest5"
        case interest6 = "interest6"
        case method4 = "method4"
        case method5 = "method5"
        case method6 = "method6"
        case seats9Ge4 = "seats9ge4"
        case seats9Ge5 = "seats9ge5"
        case seats9Ge6 = "seats9ge6"
        case grade9Gefilledflag4 = "grade9gefilledflag4"
        case grade9Gefilledflag5 = "grade9gefilledflag5"
        case grade9Gefilledflag6 = "grade9gefilledflag6"
        case grade9Geapplicants4 = "grade9geapplicants4"
        case grade9Geapplicants5 = "grade9geapplicants5"
        case grade9Geapplicants6 = "grade9geapplicants6"
        case seats9Swd4 = "seats9swd4"
        case seats9Swd5 = "seats9swd5"
        case seats9Swd6 = "seats9swd6"
        case grade9Swdfilledflag4 = "grade9swdfilledflag4"
        case grade9Swdfilledflag5 = "grade9swdfilledflag5"
        case grade9Swdfilledflag6 = "grade9swdfilledflag6"
        case grade9Swdapplicants4 = "grade9swdapplicants4"
        case grade9Swdapplicants5 = "grade9swdapplicants5"
        case grade9Swdapplicants6 = "grade9swdapplicants6"
        case seats104 = "seats104"
        case seats105 = "seats105"
        case seats106 = "seats106"
        case admissionspriority14 = "admissionspriority14"
        case admissionspriority15 = "admissionspriority15"
        case admissionspriority16 = "admissionspriority16"
        case auditioninformation1 = "auditioninformation1"
        case auditioninformation2 = "auditioninformation2"
        case auditioninformation3 = "auditioninformation3"
        case auditioninformation4 = "auditioninformation4"
        case auditioninformation5 = "auditioninformation5"
        case auditioninformation6 = "auditioninformation6"
        case grade9Geapplicantsperseat4 = "grade9geapplicantsperseat4"
        case grade9Geapplicantsperseat5 = "grade9geapplicantsperseat5"
        case grade9Geapplicantsperseat6 = "grade9geapplicantsperseat6"
        case grade9Swdapplicantsperseat4 = "grade9swdapplicantsperseat4"
        case grade9Swdapplicantsperseat5 = "grade9swdapplicantsperseat5"
        case grade9Swdapplicantsperseat6 = "grade9swdapplicantsperseat6"
        case earlycollege = "earlycollege"
        case admissionspriority51 = "admissionspriority51"
        case admissionspriority61 = "admissionspriority61"
        case offerRate3 = "offer_rate3"
        case offerRate4 = "offer_rate4"
        case admissionspriority23 = "admissionspriority23"
        case admissionspriority24 = "admissionspriority24"
        case ptech = "ptech"
        case offerRate5 = "offer_rate5"
        case offerRate6 = "offer_rate6"
        case program7 = "program7"
        case code7 = "code7"
        case interest7 = "interest7"
        case method7 = "method7"
        case seats9Ge7 = "seats9ge7"
        case grade9Gefilledflag7 = "grade9gefilledflag7"
        case grade9Geapplicants7 = "grade9geapplicants7"
        case seats9Swd7 = "seats9swd7"
        case grade9Swdfilledflag7 = "grade9swdfilledflag7"
        case grade9Swdapplicants7 = "grade9swdapplicants7"
        case seats107 = "seats107"
        case admissionspriority17 = "admissionspriority17"
        case admissionspriority25 = "admissionspriority25"
        case admissionspriority26 = "admissionspriority26"
        case admissionspriority34 = "admissionspriority34"
        case admissionspriority44 = "admissionspriority44"
        case grade9Geapplicantsperseat7 = "grade9geapplicantsperseat7"
        case grade9Swdapplicantsperseat7 = "grade9swdapplicantsperseat7"
        case boys = "boys"
        case directions2 = "directions2"
        case requirement52 = "requirement5_2"
        case prgdesc7 = "prgdesc7"
        case directions7 = "directions7"
        case requirement17 = "requirement1_7"
        case program8 = "program8"
        case code8 = "code8"
        case interest8 = "interest8"
        case method8 = "method8"
        case seats9Ge8 = "seats9ge8"
        case grade9Gefilledflag8 = "grade9gefilledflag8"
        case grade9Geapplicants8 = "grade9geapplicants8"
        case seats9Swd8 = "seats9swd8"
        case grade9Swdfilledflag8 = "grade9swdfilledflag8"
        case grade9Swdapplicants8 = "grade9swdapplicants8"
        case seats108 = "seats108"
        case admissionspriority18 = "admissionspriority18"
        case grade9Geapplicantsperseat8 = "grade9geapplicantsperseat8"
        case grade9Swdapplicantsperseat8 = "grade9swdapplicantsperseat8"
        case commonAudition1 = "common_audition1"
        case geoeligibility = "geoeligibility"
        case specialized = "specialized"
        case seats1Specialized = "seats1specialized"
        case applicants1Specialized = "applicants1specialized"
        case appperseat1Specialized = "appperseat1specialized"
        case admissionspriority42 = "admissionspriority42"
        case admissionspriority52 = "admissionspriority52"
        case commonAudition4 = "common_audition4"
        case commonAudition5 = "common_audition5"
        case requirement53 = "requirement5_3"
        case requirement63 = "requirement6_3"
        case requirement27 = "requirement2_7"
        case requirement37 = "requirement3_7"
        case admissionspriority71 = "admissionspriority71"
        case eligibility3 = "eligibility3"
        case admissionspriority35 = "admissionspriority35"
        case requirement62 = "requirement6_2"
        case requirement54 = "requirement5_4"
        case commonAudition2 = "common_audition2"
        case directions3 = "directions3"
        case directions4 = "directions4"
        case admissionspriority33 = "admissionspriority33"
        case admissionspriority36 = "admissionspriority36"
        case admissionspriority46 = "admissionspriority46"
        case admissionspriority56 = "admissionspriority56"
        case commonAudition3 = "common_audition3"
        case prgdesc8 = "prgdesc8"
        case admissionspriority27 = "admissionspriority27"
        case admissionspriority37 = "admissionspriority37"
        case admissionspriority54 = "admissionspriority54"
        case admissionspriority64 = "admissionspriority64"
        case admissionspriority74 = "admissionspriority74"
        case requirement61 = "requirement6_1"
        case eligibility4 = "eligibility4"
        case requirement47 = "requirement4_7"
        case requirement55 = "requirement5_5"
        case eligibility5 = "eligibility5"
        case eligibility6 = "eligibility6"
        case eligibility7 = "eligibility7"
        case auditioninformation7 = "auditioninformation7"
        case commonAudition6 = "common_audition6"
        case commonAudition7 = "common_audition7"
        case prgdesc9 = "prgdesc9"
        case prgdesc10 = "prgdesc10"
        case requirement18 = "requirement1_8"
        case requirement28 = "requirement2_8"
        case requirement38 = "requirement3_8"
        case offerRate7 = "offer_rate7"
        case offerRate8 = "offer_rate8"
        case offerRate9 = "offer_rate9"
        case program9 = "program9"
        case program10 = "program10"
        case code9 = "code9"
        case code10 = "code10"
        case interest9 = "interest9"
        case interest10 = "interest10"
        case method9 = "method9"
        case method10 = "method10"
        case seats9Ge9 = "seats9ge9"
        case seats9Ge10 = "seats9ge10"
        case grade9Gefilledflag9 = "grade9gefilledflag9"
        case grade9Gefilledflag10 = "grade9gefilledflag10"
        case grade9Geapplicants9 = "grade9geapplicants9"
        case grade9Geapplicants10 = "grade9geapplicants10"
        case seats9Swd9 = "seats9swd9"
        case seats9Swd10 = "seats9swd10"
        case grade9Swdfilledflag9 = "grade9swdfilledflag9"
        case grade9Swdfilledflag10 = "grade9swdfilledflag10"
        case grade9Swdapplicants9 = "grade9swdapplicants9"
        case grade9Swdapplicants10 = "grade9swdapplicants10"
        case seats109 = "seats109"
        case seats1010 = "seats1010"
        case admissionspriority19 = "admissionspriority19"
        case admissionspriority110 = "admissionspriority110"
        case admissionspriority28 = "admissionspriority28"
        case admissionspriority29 = "admissionspriority29"
        case grade9Geapplicantsperseat9 = "grade9geapplicantsperseat9"
        case grade9Geapplicantsperseat10 = "grade9geapplicantsperseat10"
        case grade9Swdapplicantsperseat9 = "grade9swdapplicantsperseat9"
        case grade9Swdapplicantsperseat10 = "grade9swdapplicantsperseat10"
        case admissionspriority43 = "admissionspriority43"
        case directions5 = "directions5"
        case directions6 = "directions6"
        case requirement56 = "requirement5_6"
        case seats2Specialized = "seats2specialized"
        case seats3Specialized = "seats3specialized"
        case seats4Specialized = "seats4specialized"
        case seats5Specialized = "seats5specialized"
        case seats6Specialized = "seats6specialized"
        case applicants2Specialized = "applicants2specialized"
        case applicants3Specialized = "applicants3specialized"
        case applicants4Specialized = "applicants4specialized"
        case applicants5Specialized = "applicants5specialized"
        case applicants6Specialized = "applicants6specialized"
        case appperseat2Specialized = "appperseat2specialized"
        case appperseat3Specialized = "appperseat3specialized"
        case appperseat4Specialized = "appperseat4specialized"
        case appperseat5Specialized = "appperseat5specialized"
        case appperseat6Specialized = "appperseat6specialized"
        case admissionspriority53 = "admissionspriority53"
        case admissionspriority62 = "admissionspriority62"
        case admissionspriority63 = "admissionspriority63"
        case requirement57 = "requirement5_7"
        case requirement67 = "requirement6_7"
    }
}


