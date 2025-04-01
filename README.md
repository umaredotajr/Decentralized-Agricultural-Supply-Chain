# Decentralized Agricultural Supply Chain

A blockchain-based solution for agricultural supply chain management built with Clarity smart contracts for the Stacks blockchain.

## Overview

This project implements a decentralized agricultural supply chain system that provides transparency, traceability, and trust throughout the agricultural product lifecycle. The system consists of five main smart contracts that handle different aspects of the supply chain.

## Smart Contracts

### 1. Farm Registration Contract

This contract validates legitimate agricultural producers by:
- Registering farms with owner, name, location, and status information
- Allowing farm owners to update their active status
- Providing read-only functions to query farm information

### 2. Crop Certification Contract

This contract verifies organic or sustainable practices by:
- Issuing certifications for specific crops and certification types
- Setting expiration dates for certifications
- Allowing certifiers to revoke certifications
- Providing functions to check certification validity

### 3. Logistics Tracking Contract

This contract monitors movement from farm to consumer by:
- Creating shipment records with origin, destination, and product details
- Tracking shipment status updates throughout the journey
- Recording location and status events with timestamps
- Providing complete shipment history

### 4. Quality Verification Contract

This contract records testing results for produce by:
- Documenting quality checks with temperature, humidity, and test results
- Calculating overall pass/fail status based on multiple test criteria
- Linking quality checks to specific shipments
- Providing verification functions for quality compliance

### 5. Payment Tracking Contract

This contract monitors settlement of underlying invoices by:
- Creating invoices linked to shipments
- Tracking payment status and due dates
- Supporting dispute resolution processes
- Identifying overdue invoices

## Getting Started

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) - Clarity development environment
- [Stacks blockchain](https://www.stacks.co/) - For deployment

### Installation

1. Clone the repository:
