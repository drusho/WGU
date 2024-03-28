-- Create service table
-- Establish one-to-one relationship with customer table
CREATE TABLE
    public.services (
        customer_id TEXT NOT NULL,
        internetservice TEXT NOT NULL,
        phone TEXT NOT NULL,
        multiple TEXT NOT NULL,
        onlinesecurity TEXT NOT NULL,
        onlinebackup TEXT NOT NULL,
        deviceprotection TEXT NOT NULL,
        techsupport TEXT NOT NULL,
        FOREIGN KEY (customer_id) -- establish customer_id as FK
        REFERENCES public.customer (customer_id) -- specify customer table and services.customer_id for the foreign key relationship.
    );