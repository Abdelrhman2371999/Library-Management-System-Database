# Library Management System Database Design

## 📚 Project Overview
This repository contains the complete database design for a comprehensive Library Management System. The system tracks library operations including employee management, floor organization, user registration, book cataloging, and borrowing transactions.

## 🗄️ Database Schema Design

### Core Entities

#### 1. **Employees Management**
- **Employees Table**: Tracks all library staff with complete personal and professional details
- **Supervisor Hierarchy**: Self-referencing relationship for employee supervision
- **Floor Management**: Employees assigned to specific floors with manager assignments

#### 2. **Floor Organization**
- **Floors Table**: Manages library floor layout with block organization
- **Manager Assignment**: Each floor has a designated employee manager with hiring dates

#### 3. **User Management**
- **Users Table**: Stores registered library users
- **Multiple Phone Numbers**: Support for multiple contact numbers per user

#### 4. **Book Catalog System**
- **Books Table**: Comprehensive book information with relationships to publishers, categories, and shelves
- **Multi-Author Support**: Books can have one or multiple authors
- **Publisher Tracking**: Complete publisher information management
- **Category Classification**: Hierarchical book categorization
- **Shelf Organization**: Physical book location tracking by floor

#### 5. **Borrowing System**
- **Borrow Table**: Records all book lending transactions
- **Multi-key Relationships**: Links users, books, and employees in borrowing process
- **Financial Tracking**: Records borrowing fees and due dates

## 🔗 Relationships

### One-to-Many Relationships
1. Employee → Supervisor (Self-referencing)
2. Floor → Manager (Employee)
3. Publisher → Books
4. Category → Books
5. Shelf → Books
6. Floor → Shelves
7. Employee → Borrow Records
8. User → Borrow Records

### Many-to-Many Relationships
1. Book ↔ Author (via BookAuthor junction table)

## 📊 Key Features

### Complete Library Operations
- **Employee Management**: Track all staff with supervisory hierarchy
- **Space Management**: Organize library physical layout by floors and blocks
- **User Registration**: Comprehensive user data collection
- **Inventory Control**: Complete book tracking from acquisition to shelving
- **Transaction Processing**: Full borrowing cycle management

### Data Integrity
- **Referential Integrity**: Foreign key constraints maintain relationship consistency
- **Unique Constraints**: Prevent duplicate entries for critical fields
- **Composite Keys**: Proper identification of complex relationships

### Scalability
- **Modular Design**: Easy to extend with additional features
- **Normalized Structure**: Efficient data storage and retrieval
- **Flexible Relationships**: Support for complex library scenarios

## 🛠️ Technical Implementation

### Database Tables
The system consists of 11 normalized tables:
- `Employees` - Staff information
- `Floors` - Physical layout
- `Users` - Library members
- `User_Phone` - User contact numbers
- `Shelf` - Book storage locations
- `Category` - Book classifications
- `Publisher` - Publishing companies
- `Author` - Book authors
- `Book` - Book catalog
- `BookAuthor` - Author-book relationships
- `Borrow` - Lending transactions

### Data Types
- **Primary Keys**: Integer and Character types
- **Text Fields**: VARCHAR with appropriate lengths
- **Numerical Data**: DECIMAL for financial, INT for counts
- **Temporal Data**: DATE for all date-related fields

## 📁 Repository Structure
```
/
├── Database.pdf           # Project requirements and specifications
├── mapping.drawio.png    # Visual database schema diagram
├── README.md             # This documentation file
└── database_schema.sql   # Complete SQL implementation (to be added)
```

## 🚀 Getting Started

### Prerequisites
- MySQL/PostgreSQL/SQL Server database system
- Database management tool (phpMyAdmin, pgAdmin, SQL Server Management Studio)

### Installation
1. Execute the provided SQL scripts in your database system
2. Configure connection parameters for your application
3. Populate with initial data as needed

## 📈 Future Enhancements
Potential extensions for this system:
- Fine tracking for overdue books
- Reservation system for popular books
- Analytics and reporting module
- Multi-branch library support
- Digital content management

## 🤝 Contributing
This database design serves as a foundation for library management systems. Contributions for improvements, optimizations, or additional features are welcome.

## 📄 License
This project is intended for educational and practical implementation purposes.

---

*Designed for efficient library operations management with scalability and data integrity as primary considerations.*
