InputBox, week, Weekly Folder Creation, Which Week is it ? `n `nFollow this format:   "  Week _  " , , 300, 170, , , , ,

;week := "Week %WeekNO%"





;FolderCreate("AEAS 201 (AP Mijanur Rahman)",week)
;FolderCreate("AEAS 201 (AP Nazifa)",week)
;FolderCreate("AEAV 203 (Lec Dipto)",week)
;FolderCreate("AEAV 203 (Maj Sanjida)",week)
;FolderCreate("AEAV 204 (Lec Tanima Ahmed Hridi)",week)
;FolderCreate("AEAV 205 (Maj Evan)",week)
;FolderCreate("AEAV 206 (Lec Anas Aziz)",week)
;FolderCreate("HUM 211 (AP Masud)",week)
;FolderCreate("HUM 211 (Maj Md Shakhawat)",week)
;FolderCreate("MATH 223 (Lt Col Tahmina Sultana)",week)
;FolderCreate("MATH 223 (Maj Amir)",week)

FolderCreate("AEAS 203 (Fluid Mechanics _Dr Taher)",week)
FolderCreate("AEAS 204",week)
FolderCreate("AEAS 205 (Mechanics of Solids _AP Nazifa)",week)
FolderCreate("AEAS 206",week)
FolderCreate("AEAS 207 _A (Thermodynamics _AP Nazifa)",week)
FolderCreate("AEAS 207 _B (Thermodynamics _Lec Tariqul)",week)
FolderCreate("AEAS 208",week)
FolderCreate("AEAS 210 (Engg Drawing II )",week)
FolderCreate("AEAS 215 (Aircraft System _Lec Tariqul)",week)
FolderCreate("MATH 225 _ A (Fourier _Lec Sadia)",week)
FolderCreate("MATH 225 _ B (Statistics _Lec Nafisa)",week)



FolderCreate(Folder,WeekNo)
    {
        FileCreateDir, L:\OneDrive - Military Institute of Science and Technology (MIST)\1.MIST\L-2 T-2\%Folder%\%WeekNo%
    }
