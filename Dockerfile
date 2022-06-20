ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="0.5"
FROM ${BASE_IMAGE}:${TAG}
LABEL project="Hangar"\
      version="0.5" \
      mantainer="bileyg"\
      company="Ascon Complex"
RUN ["mkdir","-p","/root/.wine/drive_c/ProgramData/ASCON/Pilot_Print"]
COPY ["build","/root/.wine/drive_c/Program Files/ASCON/PilotSpecial"]
COPY ["BIM","/home/Pilot/BIM"]
COPY ["PDF2XPS","/home/Pilot/PDF2XPS"]
ENTRYPOINT ["wine","/root/.wine/drive_c/Program Files/ASCON/PilotSpecial/Ascon.Pilot.PilotEnterprise.exe"]
