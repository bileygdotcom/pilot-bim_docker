ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="dryweight"
FROM ${BASE_IMAGE}:${TAG}
LABEL project="Pilot-BIM"\
      version="0.6" \
      mantainer="bileyg"\
      company="Ascon Complex"
RUN ["mkdir","-p","/root/.wine/drive_c/ProgramData/ASCON/Pilot_Print"]
COPY ["build","/root/.wine/drive_c/Program Files/ASCON/PilotSpecial"]
COPY ["BIM","/home/Pilot/BIM"]
COPY ["PDF2XPS","/home/Pilot/PDF2XPS"]
ENTRYPOINT ["wine","/root/.wine/drive_c/Program Files/ASCON/PilotSpecial/Ascon.Pilot.PilotEnterprise.exe"]
