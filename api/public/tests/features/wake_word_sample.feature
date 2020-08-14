Feature: Upload wake word samples from a device
  Users that opted in to the Open Dataset Agreement will have files containing the audio that
  activated the wake word recognizer uploaded to Mycroft servers for classification and tracking.

  Scenario: Device sends wake word audio sample
    When the device uploads a wake word sample
    Then the request will be successful
    And the audio file is saved to a temporary directory
    And a reference to the sample is stored in the database
