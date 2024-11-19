CREATE TABLE "Notification"(
    "ModifiedOn" DATETIME NOT NULL,
    "CertificateID" uniqueidentifier NOT NULL,
    "CreatedBy" uniqueidentifier NOT NULL,
    "Status" NVARCHAR(255) CHECK
        ("Status" IN(N'')) NOT NULL,
        "ModifiedBy" uniqueidentifier NOT NULL,
        "Recipients" TEXT NOT NULL,
        "NotificationType" NVARCHAR(255)
    CHECK
        ("NotificationType" IN(N'')) NOT NULL,
        "ScheduledDate" DATETIME NOT NULL,
        "CreatedOn" DATETIME NOT NULL,
        "ID" uniqueidentifier NOT NULL
);
CREATE UNIQUE INDEX "notification_certificateid_unique" ON
    "Notification"("CertificateID");
CREATE UNIQUE INDEX "notification_createdby_unique" ON
    "Notification"("CreatedBy");
CREATE UNIQUE INDEX "notification_modifiedby_unique" ON
    "Notification"("ModifiedBy");
ALTER TABLE
    "Notification" ADD CONSTRAINT "notification_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Certificate"(
    "CertficateName" VARCHAR(255) NOT NULL,
    "ID" uniqueidentifier NOT NULL,
    "CreatedBy" uniqueidentifier NOT NULL,
    "ServerName" VARCHAR(255) NOT NULL,
    "Notes" TEXT NOT NULL,
    "Issuer" BIGINT NOT NULL,
    "Status" NVARCHAR(255) CHECK
        ("Status" IN(N'')) NOT NULL,
        "ModifiedBy" uniqueidentifier NOT NULL,
        "ModifiedOn" DATETIME NOT NULL,
        "CreatedOn" DATETIME NOT NULL,
        "ExpirationDate" DATETIME NOT NULL,
        "RenewalDate" DATETIME NOT NULL
);
ALTER TABLE
    "Certificate" ADD CONSTRAINT "certificate_id_primary" PRIMARY KEY("ID");
CREATE UNIQUE INDEX "certificate_createdby_unique" ON
    "Certificate"("CreatedBy");
CREATE UNIQUE INDEX "certificate_modifiedby_unique" ON
    "Certificate"("ModifiedBy");
CREATE TABLE "User"(
    "CreatedOn" DATETIME NOT NULL,
    "Email" uniqueidentifier NULL,
    "ID" uniqueidentifier NOT NULL,
    "ModifiedOn" DATETIME NOT NULL,
    "Role" NVARCHAR(255) CHECK
        ("Role" IN(N'')) NOT NULL,
        "UserName" uniqueidentifier NULL
);
ALTER TABLE
    "User" ADD CONSTRAINT "user_id_primary" PRIMARY KEY("ID");
ALTER TABLE
    "Notification" ADD CONSTRAINT "notification_createdby_foreign" FOREIGN KEY("CreatedBy") REFERENCES "User"("ID");
ALTER TABLE
    "Certificate" ADD CONSTRAINT "certificate_modifiedby_foreign" FOREIGN KEY("ModifiedBy") REFERENCES "User"("ID");
ALTER TABLE
    "Notification" ADD CONSTRAINT "notification_modifiedby_foreign" FOREIGN KEY("ModifiedBy") REFERENCES "User"("ID");
ALTER TABLE
    "Certificate" ADD CONSTRAINT "certificate_createdby_foreign" FOREIGN KEY("CreatedBy") REFERENCES "User"("ID");
ALTER TABLE
    "Notification" ADD CONSTRAINT "notification_certificateid_foreign" FOREIGN KEY("CertificateID") REFERENCES "Certificate"("ID");