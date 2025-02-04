// SPDX-License-Identifier: Proprietary
pragma solidity ^0.8.17;

contract ReportSystem {
    // Mapping to store reports: user address -> reported user address -> report text
    mapping(address => mapping(address => string)) public reports;

    // Event to notify when a new report is created
    event ReportCreated(address indexed from, address indexed to, string text);

    // Function to set a report
    function setReport(address _to, string memory _text) public {
        // Set the report text in the mapping
        reports[msg.sender][_to] = _text;

        // Emit the ReportCreated event
        emit ReportCreated(msg.sender, _to, _text);
    }
}
