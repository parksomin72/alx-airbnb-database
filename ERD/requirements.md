# ER Diagram Requirements for AirBnB Database

**Table of Contents**
* [Objective](#objective)
* [Database Specification - AirBnB Entities and Attributes](#database-specification---airbnb-entities-and-attributes)
    * [User](#user)
    * [Property](#property)
    * [Booking](#booking)
    * [Payment](#payment)
    * [Review](#review)
    * [Message](#message)
* [Constraints](#constraints)
    * [User Table](#user-table)
    * [Property Table](#property-table)
    * [Booking Table](#booking-table)
    * [Payment Table](#payment-table)
    * [Review Table](#review-table)
    * [Message Table](#message-table)
* [Indexing](#indexing)
* [Instructions](#instructions)
* [Repo](#repo)
* [Deliverables](#deliverables)
* [Assessment Criteria](#assessment-criteria)

## Objective

Create an Entity-Relationship (ER) diagram based on the database specification provided below.

## Database Specification - AirBnB Entities and Attributes

### User
* `user_id`: Primary Key, UUID, Indexed
* `first_name`: VARCHAR, NOT NULL
* `last_name`: VARCHAR, NOT NULL
* `email`: VARCHAR, UNIQUE, NOT NULL
* `password_hash`: VARCHAR, NOT NULL
* `phone_number`: VARCHAR, NULL
* `role`: ENUM (guest, host, admin), NOT NULL
* `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Property
* `property_id`: Primary Key, UUID, Indexed
* `host_id`: Foreign Key, references `User(user_id)`
* `name`: VARCHAR, NOT NULL
* `description`: TEXT, NOT NULL
* `location`: VARCHAR, NOT NULL
* `pricepernight`: DECIMAL, NOT NULL
* `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
* `updated_at`: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

### Booking
* `booking_id`: Primary Key, UUID, Indexed
* `property_id`: Foreign Key, references `Property(property_id)`
* `user_id`: Foreign Key, references `User(user_id)`
* `start_date`: DATE, NOT NULL
* `end_date`: DATE, NOT NULL
* `total_price`: DECIMAL, NOT NULL
* `status`: ENUM (pending, confirmed, canceled), NOT NULL
* `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Payment
* `payment_id`: Primary Key, UUID, Indexed
* `booking_id`: Foreign Key, references `Booking(booking_id)`
* `amount`: DECIMAL, NOT NULL
* `payment_date`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
* `payment_method`: ENUM (credit_card, paypal, stripe), NOT NULL

### Review
* `review_id`: Primary Key, UUID, Indexed
* `property_id`: Foreign Key, references `Property(property_id)`
* `user_id`: Foreign Key, references `User(user_id)`
* `rating`: INTEGER, CHECK: `rating >= 1 AND rating <= 5`, NOT NULL
* `comment`: TEXT, NOT NULL
* `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Message
* `message_id`: Primary Key, UUID, Indexed
* `sender_id`: Foreign Key, references `User(user_id)`
* `recipient_id`: Foreign Key, references `User(user_id)`
* `message_body`: TEXT, NOT NULL
* `sent_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

## Constraints

### User Table
* Unique constraint on `email`.
* Non-null constraints on required fields.

### Property Table
* Foreign key constraint on `host_id`.
* Non-null constraints on essential attributes.

### Booking Table
* Foreign key constraints on `property_id` and `user_id`.
* `status` must be one of `pending`, `confirmed`, or `canceled`.

### Payment Table
* Foreign key constraint on `booking_id`, ensuring payment is linked to valid bookings.

### Review Table
* Constraints on `rating` values (1-5).
* Foreign key constraints on `property_id` and `user_id`.

### Message Table
* Foreign key constraints on `sender_id` and `recipient_id`.

## Indexing

* Primary Keys: Indexed automatically.
* Additional Indexes:
    * `email` in the `User` table.
    * `property_id` in the `Property` and `Booking` tables.
    * `booking_id` in the `Booking` and `Payment` tables.

## Instructions

1.  **Identify all entities** (`User`, `Property`, `Booking`, etc.) and their attributes.
2.  **Define the relationships between entities** (e.g., User to Booking, Property to Booking).
3.  Use [Draw.io](https://draw.io) or another suitable tool to create a visual representation of your ER diagram.
4.  Save your ER diagram in a suitable format (e.g., PNG, JPG, SVG).

## Repo

* GitHub repository: `alx-airbnb-database`
* Directory: `ERD/`
* File: `requirements.md` (this file)
* ER Diagram File: (e.g., `ER.drawio`, `ER.png`)

## Deliverables

* A `.drawio` file (if using Draw.io) or the source file of the tool you used to create the ER diagram.
* An exported image of the ER diagram (PNG, JPG, or SVG).

## Assessment Criteria

* Accuracy in identifying entities and their attributes.
* Correctly defining and illustrating the relationships between entities.
* Clarity and readability of the ER diagram.
* Adherence: to the provided database specification.
