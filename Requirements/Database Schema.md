
# Database Schema

Here is the proposed database schema for your certificate management system:

| Table Name | Column Name | Data Type | PK/FK | Description | Indexes/Constraints |
|------------|-------------|-----------|-------|-------------|---------------------|
| Certificate | CertificateID | Uniqueidentifier | PK | Unique identifier for each certificate record | Primary Key |
| Certificate | ServerName | String (100) | - | Name of the server where the certificate is installed | Index for faster lookups |
| Certificate | CertificateName | String (255) | - | Name or common name of the certificate | - |
| Certificate | Issuer | String (255) | - | Name of the Certificate Authority that issued the certificate | - |
| Certificate | ExpirationDate | DateTime | - | Date and time when the certificate expires | Index for expiration queries |
| Certificate | RenewalDate | DateTime | - | Date and time when the certificate should be renewed (typically 30-60 days before expiration) | Index for renewal reminders |
| Certificate | Status | Choice | - | Current status of the certificate (Active, Expired, Renewed) | - |
| Certificate | Notes | Memo | - | Additional notes or comments about the certificate | - |
| Certificate | CreatedBy | Lookup | FK | Reference to the User who created the certificate record | - |
| Certificate | CreatedOn | DateTime | - | Date and time when the certificate record was created | - |
| Certificate | ModifiedBy | Lookup | FK | Reference to the User who last modified the certificate record | - |
| Certificate | ModifiedOn | DateTime | - | Date and time when the certificate record was last modified | - |
| Notification | NotificationID | Uniqueidentifier | PK | Unique identifier for each notification record | Primary Key |
| Notification | CertificateID | Lookup | FK | Reference to the Certificate associated with this notification | Foreign Key to Certificate table |
| Notification | NotificationType | Choice | - | Type of notification (Email, Teams message, etc.) | - |
| Notification | Recipients | String (1000) | - | Comma-separated list of email addresses or user IDs to receive the notification | - |
| Notification | ScheduledDate | DateTime | - | Date and time when the notification is scheduled to be sent | Index for scheduling |
| Notification | Status | Choice | - | Current status of the notification (Pending, Sent, Failed) | - |
| Notification | CreatedBy | Lookup | FK | Reference to the User who created the notification record | - |
| Notification | CreatedOn | DateTime | - | Date and time when the notification record was created | - |
| Notification | ModifiedBy | Lookup | FK | Reference to the User who last modified the notification record | - |
| Notification | ModifiedOn | DateTime | - | Date and time when the notification record was last modified | - |
| User | UserID | Uniqueidentifier | PK | Unique identifier for each user record | Primary Key |
| User | UserName | String (100) | - | Username of the user | Unique constraint |
| User | Email | String (255) | - | Email address of the user | Unique constraint |
| User | Role | Choice | - | Role of the user (Admin, IT Staff, Viewer) | - |
| User | CreatedOn | DateTime | - | Date and time when the user record was created | - |
| User | ModifiedOn | DateTime | - | Date and time when the user record was last modified | - |

This table structure provides a solid foundation for the Certificate Management Power Apps application. It includes the necessary relationships between tables, appropriate data types, and indexes for improved performance. The structure also allows for easy tracking of certificate expiration dates, notification management, and user roles within the system.

Citations:
[1] https://docs.redhat.com/en/documentation/red_hat_certificate_system/9/html/administration_guide/managing_the_certificate_database
[2] https://learn.microsoft.com/en-us/power-apps/developer/data-platform/reference/entities/attribute
[3] https://docs.oracle.com/cd/E19957-01/816-5531-10/cs40_int.htm
[4] https://www.keyfactor.com/blog/nist-tls-certificate-management/
[5] https://learn.microsoft.com/en-us/power-apps/developer/data-platform/entity-attribute-metadata
[6] https://www.solarwinds.com/server-application-monitor/use-cases/ssl-certificate-monitor
[7] https://learn.microsoft.com/en-us/power-apps/developer/data-platform/reference/about-entity-reference
[8] https://community.powerplatform.com/forums/thread/details/?threadid=1216d2c0-8190-495e-a72b-ef929f84d4cd
[9] https://learn.microsoft.com/en-us/power-apps/maker/model-driven-apps/common-field-properties-legacy
[10] https://community.powerplatform.com/blogs/post/?postid=c7c2c9f7-ff58-4cad-83f7-58ec6e9035a8
[11] https://learn.microsoft.com/en-us/power-apps/maker/data-platform/create-edit-field-portal