//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

#import "OWSSignalServiceProtos.pb.h"
// @@protoc_insertion_point(imports)

@implementation OWSSignalServiceProtosOwssignalServiceProtosRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [OWSSignalServiceProtosOwssignalServiceProtosRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [ObjectivecDescriptorRoot registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface OWSSignalServiceProtosEnvelope ()
@property OWSSignalServiceProtosEnvelopeType type;
@property (strong) NSString* source;
@property UInt32 sourceDevice;
@property (strong) NSString* relay;
@property UInt64 timestamp;
@property (strong) NSData* legacyMessage;
@property (strong) NSData* content;
@end

@implementation OWSSignalServiceProtosEnvelope

- (BOOL) hasType {
  return !!hasType_;
}
- (void) setHasType:(BOOL) _value_ {
  hasType_ = !!_value_;
}
@synthesize type;
- (BOOL) hasSource {
  return !!hasSource_;
}
- (void) setHasSource:(BOOL) _value_ {
  hasSource_ = !!_value_;
}
@synthesize source;
- (BOOL) hasSourceDevice {
  return !!hasSourceDevice_;
}
- (void) setHasSourceDevice:(BOOL) _value_ {
  hasSourceDevice_ = !!_value_;
}
@synthesize sourceDevice;
- (BOOL) hasRelay {
  return !!hasRelay_;
}
- (void) setHasRelay:(BOOL) _value_ {
  hasRelay_ = !!_value_;
}
@synthesize relay;
- (BOOL) hasTimestamp {
  return !!hasTimestamp_;
}
- (void) setHasTimestamp:(BOOL) _value_ {
  hasTimestamp_ = !!_value_;
}
@synthesize timestamp;
- (BOOL) hasLegacyMessage {
  return !!hasLegacyMessage_;
}
- (void) setHasLegacyMessage:(BOOL) _value_ {
  hasLegacyMessage_ = !!_value_;
}
@synthesize legacyMessage;
- (BOOL) hasContent {
  return !!hasContent_;
}
- (void) setHasContent:(BOOL) _value_ {
  hasContent_ = !!_value_;
}
@synthesize content;
- (instancetype) init {
  if ((self = [super init])) {
    self.type = OWSSignalServiceProtosEnvelopeTypeUnknown;
    self.source = @"";
    self.sourceDevice = 0;
    self.relay = @"";
    self.timestamp = 0L;
    self.legacyMessage = [NSData data];
    self.content = [NSData data];
  }
  return self;
}
static OWSSignalServiceProtosEnvelope* defaultOWSSignalServiceProtosEnvelopeInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosEnvelope class]) {
    defaultOWSSignalServiceProtosEnvelopeInstance = [[OWSSignalServiceProtosEnvelope alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosEnvelopeInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosEnvelopeInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasType) {
    [output writeEnum:1 value:self.type];
  }
  if (self.hasSource) {
    [output writeString:2 value:self.source];
  }
  if (self.hasRelay) {
    [output writeString:3 value:self.relay];
  }
  if (self.hasTimestamp) {
    [output writeUInt64:5 value:self.timestamp];
  }
  if (self.hasLegacyMessage) {
    [output writeData:6 value:self.legacyMessage];
  }
  if (self.hasSourceDevice) {
    [output writeUInt32:7 value:self.sourceDevice];
  }
  if (self.hasContent) {
    [output writeData:8 value:self.content];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasType) {
    size_ += computeEnumSize(1, self.type);
  }
  if (self.hasSource) {
    size_ += computeStringSize(2, self.source);
  }
  if (self.hasRelay) {
    size_ += computeStringSize(3, self.relay);
  }
  if (self.hasTimestamp) {
    size_ += computeUInt64Size(5, self.timestamp);
  }
  if (self.hasLegacyMessage) {
    size_ += computeDataSize(6, self.legacyMessage);
  }
  if (self.hasSourceDevice) {
    size_ += computeUInt32Size(7, self.sourceDevice);
  }
  if (self.hasContent) {
    size_ += computeDataSize(8, self.content);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosEnvelope*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosEnvelope*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosEnvelope*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosEnvelope*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosEnvelope*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosEnvelope*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosEnvelope*)[[[OWSSignalServiceProtosEnvelope builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosEnvelopeBuilder*) builder {
  return [[OWSSignalServiceProtosEnvelopeBuilder alloc] init];
}
+ (OWSSignalServiceProtosEnvelopeBuilder*) builderWithPrototype:(OWSSignalServiceProtosEnvelope*) prototype {
  return [[OWSSignalServiceProtosEnvelope builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosEnvelopeBuilder*) builder {
  return [OWSSignalServiceProtosEnvelope builder];
}
- (OWSSignalServiceProtosEnvelopeBuilder*) toBuilder {
  return [OWSSignalServiceProtosEnvelope builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"type", NSStringFromOWSSignalServiceProtosEnvelopeType(self.type)];
  }
  if (self.hasSource) {
    [output appendFormat:@"%@%@: %@\n", indent, @"source", self.source];
  }
  if (self.hasRelay) {
    [output appendFormat:@"%@%@: %@\n", indent, @"relay", self.relay];
  }
  if (self.hasTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"timestamp", [NSNumber numberWithLongLong:self.timestamp]];
  }
  if (self.hasLegacyMessage) {
    [output appendFormat:@"%@%@: %@\n", indent, @"legacyMessage", self.legacyMessage];
  }
  if (self.hasSourceDevice) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sourceDevice", [NSNumber numberWithInteger:self.sourceDevice]];
  }
  if (self.hasContent) {
    [output appendFormat:@"%@%@: %@\n", indent, @"content", self.content];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasType) {
    [dictionary setObject: @(self.type) forKey: @"type"];
  }
  if (self.hasSource) {
    [dictionary setObject: self.source forKey: @"source"];
  }
  if (self.hasRelay) {
    [dictionary setObject: self.relay forKey: @"relay"];
  }
  if (self.hasTimestamp) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.timestamp] forKey: @"timestamp"];
  }
  if (self.hasLegacyMessage) {
    [dictionary setObject: self.legacyMessage forKey: @"legacyMessage"];
  }
  if (self.hasSourceDevice) {
    [dictionary setObject: [NSNumber numberWithInteger:self.sourceDevice] forKey: @"sourceDevice"];
  }
  if (self.hasContent) {
    [dictionary setObject: self.content forKey: @"content"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosEnvelope class]]) {
    return NO;
  }
  OWSSignalServiceProtosEnvelope *otherMessage = other;
  return
      self.hasType == otherMessage.hasType &&
      (!self.hasType || self.type == otherMessage.type) &&
      self.hasSource == otherMessage.hasSource &&
      (!self.hasSource || [self.source isEqual:otherMessage.source]) &&
      self.hasRelay == otherMessage.hasRelay &&
      (!self.hasRelay || [self.relay isEqual:otherMessage.relay]) &&
      self.hasTimestamp == otherMessage.hasTimestamp &&
      (!self.hasTimestamp || self.timestamp == otherMessage.timestamp) &&
      self.hasLegacyMessage == otherMessage.hasLegacyMessage &&
      (!self.hasLegacyMessage || [self.legacyMessage isEqual:otherMessage.legacyMessage]) &&
      self.hasSourceDevice == otherMessage.hasSourceDevice &&
      (!self.hasSourceDevice || self.sourceDevice == otherMessage.sourceDevice) &&
      self.hasContent == otherMessage.hasContent &&
      (!self.hasContent || [self.content isEqual:otherMessage.content]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasType) {
    hashCode = hashCode * 31 + self.type;
  }
  if (self.hasSource) {
    hashCode = hashCode * 31 + [self.source hash];
  }
  if (self.hasRelay) {
    hashCode = hashCode * 31 + [self.relay hash];
  }
  if (self.hasTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.timestamp] hash];
  }
  if (self.hasLegacyMessage) {
    hashCode = hashCode * 31 + [self.legacyMessage hash];
  }
  if (self.hasSourceDevice) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.sourceDevice] hash];
  }
  if (self.hasContent) {
    hashCode = hashCode * 31 + [self.content hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL OWSSignalServiceProtosEnvelopeTypeIsValidValue(OWSSignalServiceProtosEnvelopeType value) {
  switch (value) {
    case OWSSignalServiceProtosEnvelopeTypeUnknown:
    case OWSSignalServiceProtosEnvelopeTypeCiphertext:
    case OWSSignalServiceProtosEnvelopeTypeKeyExchange:
    case OWSSignalServiceProtosEnvelopeTypePrekeyBundle:
    case OWSSignalServiceProtosEnvelopeTypeReceipt:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromOWSSignalServiceProtosEnvelopeType(OWSSignalServiceProtosEnvelopeType value) {
  switch (value) {
    case OWSSignalServiceProtosEnvelopeTypeUnknown:
      return @"OWSSignalServiceProtosEnvelopeTypeUnknown";
    case OWSSignalServiceProtosEnvelopeTypeCiphertext:
      return @"OWSSignalServiceProtosEnvelopeTypeCiphertext";
    case OWSSignalServiceProtosEnvelopeTypeKeyExchange:
      return @"OWSSignalServiceProtosEnvelopeTypeKeyExchange";
    case OWSSignalServiceProtosEnvelopeTypePrekeyBundle:
      return @"OWSSignalServiceProtosEnvelopeTypePrekeyBundle";
    case OWSSignalServiceProtosEnvelopeTypeReceipt:
      return @"OWSSignalServiceProtosEnvelopeTypeReceipt";
    default:
      return nil;
  }
}

@interface OWSSignalServiceProtosEnvelopeBuilder()
@property (strong) OWSSignalServiceProtosEnvelope* resultEnvelope;
@end

@implementation OWSSignalServiceProtosEnvelopeBuilder
@synthesize resultEnvelope;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultEnvelope = [[OWSSignalServiceProtosEnvelope alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultEnvelope;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clear {
  self.resultEnvelope = [[OWSSignalServiceProtosEnvelope alloc] init];
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clone {
  return [OWSSignalServiceProtosEnvelope builderWithPrototype:resultEnvelope];
}
- (OWSSignalServiceProtosEnvelope*) defaultInstance {
  return [OWSSignalServiceProtosEnvelope defaultInstance];
}
- (OWSSignalServiceProtosEnvelope*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosEnvelope*) buildPartial {
  OWSSignalServiceProtosEnvelope* returnMe = resultEnvelope;
  self.resultEnvelope = nil;
  return returnMe;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) mergeFrom:(OWSSignalServiceProtosEnvelope*) other {
  if (other == [OWSSignalServiceProtosEnvelope defaultInstance]) {
    return self;
  }
  if (other.hasType) {
    [self setType:other.type];
  }
  if (other.hasSource) {
    [self setSource:other.source];
  }
  if (other.hasSourceDevice) {
    [self setSourceDevice:other.sourceDevice];
  }
  if (other.hasRelay) {
    [self setRelay:other.relay];
  }
  if (other.hasTimestamp) {
    [self setTimestamp:other.timestamp];
  }
  if (other.hasLegacyMessage) {
    [self setLegacyMessage:other.legacyMessage];
  }
  if (other.hasContent) {
    [self setContent:other.content];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosEnvelopeBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        OWSSignalServiceProtosEnvelopeType value = (OWSSignalServiceProtosEnvelopeType)[input readEnum];
        if (OWSSignalServiceProtosEnvelopeTypeIsValidValue(value)) {
          [self setType:value];
        } else {
          [unknownFields mergeVarintField:1 value:value];
        }
        break;
      }
      case 18: {
        [self setSource:[input readString]];
        break;
      }
      case 26: {
        [self setRelay:[input readString]];
        break;
      }
      case 40: {
        [self setTimestamp:[input readUInt64]];
        break;
      }
      case 50: {
        [self setLegacyMessage:[input readData]];
        break;
      }
      case 56: {
        [self setSourceDevice:[input readUInt32]];
        break;
      }
      case 66: {
        [self setContent:[input readData]];
        break;
      }
    }
  }
}
- (BOOL) hasType {
  return resultEnvelope.hasType;
}
- (OWSSignalServiceProtosEnvelopeType) type {
  return resultEnvelope.type;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setType:(OWSSignalServiceProtosEnvelopeType) value {
  resultEnvelope.hasType = YES;
  resultEnvelope.type = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearType {
  resultEnvelope.hasType = NO;
  resultEnvelope.type = OWSSignalServiceProtosEnvelopeTypeUnknown;
  return self;
}
- (BOOL) hasSource {
  return resultEnvelope.hasSource;
}
- (NSString*) source {
  return resultEnvelope.source;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setSource:(NSString*) value {
  resultEnvelope.hasSource = YES;
  resultEnvelope.source = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearSource {
  resultEnvelope.hasSource = NO;
  resultEnvelope.source = @"";
  return self;
}
- (BOOL) hasSourceDevice {
  return resultEnvelope.hasSourceDevice;
}
- (UInt32) sourceDevice {
  return resultEnvelope.sourceDevice;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setSourceDevice:(UInt32) value {
  resultEnvelope.hasSourceDevice = YES;
  resultEnvelope.sourceDevice = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearSourceDevice {
  resultEnvelope.hasSourceDevice = NO;
  resultEnvelope.sourceDevice = 0;
  return self;
}
- (BOOL) hasRelay {
  return resultEnvelope.hasRelay;
}
- (NSString*) relay {
  return resultEnvelope.relay;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setRelay:(NSString*) value {
  resultEnvelope.hasRelay = YES;
  resultEnvelope.relay = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearRelay {
  resultEnvelope.hasRelay = NO;
  resultEnvelope.relay = @"";
  return self;
}
- (BOOL) hasTimestamp {
  return resultEnvelope.hasTimestamp;
}
- (UInt64) timestamp {
  return resultEnvelope.timestamp;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setTimestamp:(UInt64) value {
  resultEnvelope.hasTimestamp = YES;
  resultEnvelope.timestamp = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearTimestamp {
  resultEnvelope.hasTimestamp = NO;
  resultEnvelope.timestamp = 0L;
  return self;
}
- (BOOL) hasLegacyMessage {
  return resultEnvelope.hasLegacyMessage;
}
- (NSData*) legacyMessage {
  return resultEnvelope.legacyMessage;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setLegacyMessage:(NSData*) value {
  resultEnvelope.hasLegacyMessage = YES;
  resultEnvelope.legacyMessage = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearLegacyMessage {
  resultEnvelope.hasLegacyMessage = NO;
  resultEnvelope.legacyMessage = [NSData data];
  return self;
}
- (BOOL) hasContent {
  return resultEnvelope.hasContent;
}
- (NSData*) content {
  return resultEnvelope.content;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) setContent:(NSData*) value {
  resultEnvelope.hasContent = YES;
  resultEnvelope.content = value;
  return self;
}
- (OWSSignalServiceProtosEnvelopeBuilder*) clearContent {
  resultEnvelope.hasContent = NO;
  resultEnvelope.content = [NSData data];
  return self;
}
@end

@interface OWSSignalServiceProtosContent ()
@property (strong) OWSSignalServiceProtosDataMessage* dataMessage;
@property (strong) OWSSignalServiceProtosSyncMessage* syncMessage;
@property (strong) OWSSignalServiceProtosCallMessage* callMessage;
@end

@implementation OWSSignalServiceProtosContent

- (BOOL) hasDataMessage {
  return !!hasDataMessage_;
}
- (void) setHasDataMessage:(BOOL) _value_ {
  hasDataMessage_ = !!_value_;
}
@synthesize dataMessage;
- (BOOL) hasSyncMessage {
  return !!hasSyncMessage_;
}
- (void) setHasSyncMessage:(BOOL) _value_ {
  hasSyncMessage_ = !!_value_;
}
@synthesize syncMessage;
- (BOOL) hasCallMessage {
  return !!hasCallMessage_;
}
- (void) setHasCallMessage:(BOOL) _value_ {
  hasCallMessage_ = !!_value_;
}
@synthesize callMessage;
- (instancetype) init {
  if ((self = [super init])) {
    self.dataMessage = [OWSSignalServiceProtosDataMessage defaultInstance];
    self.syncMessage = [OWSSignalServiceProtosSyncMessage defaultInstance];
    self.callMessage = [OWSSignalServiceProtosCallMessage defaultInstance];
  }
  return self;
}
static OWSSignalServiceProtosContent* defaultOWSSignalServiceProtosContentInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosContent class]) {
    defaultOWSSignalServiceProtosContentInstance = [[OWSSignalServiceProtosContent alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContentInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContentInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasDataMessage) {
    [output writeMessage:1 value:self.dataMessage];
  }
  if (self.hasSyncMessage) {
    [output writeMessage:2 value:self.syncMessage];
  }
  if (self.hasCallMessage) {
    [output writeMessage:3 value:self.callMessage];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasDataMessage) {
    size_ += computeMessageSize(1, self.dataMessage);
  }
  if (self.hasSyncMessage) {
    size_ += computeMessageSize(2, self.syncMessage);
  }
  if (self.hasCallMessage) {
    size_ += computeMessageSize(3, self.callMessage);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosContent*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosContent*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContent*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosContent*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContent*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosContent*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContent*)[[[OWSSignalServiceProtosContent builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContentBuilder*) builder {
  return [[OWSSignalServiceProtosContentBuilder alloc] init];
}
+ (OWSSignalServiceProtosContentBuilder*) builderWithPrototype:(OWSSignalServiceProtosContent*) prototype {
  return [[OWSSignalServiceProtosContent builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosContentBuilder*) builder {
  return [OWSSignalServiceProtosContent builder];
}
- (OWSSignalServiceProtosContentBuilder*) toBuilder {
  return [OWSSignalServiceProtosContent builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasDataMessage) {
    [output appendFormat:@"%@%@ {\n", indent, @"dataMessage"];
    [self.dataMessage writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasSyncMessage) {
    [output appendFormat:@"%@%@ {\n", indent, @"syncMessage"];
    [self.syncMessage writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasCallMessage) {
    [output appendFormat:@"%@%@ {\n", indent, @"callMessage"];
    [self.callMessage writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasDataMessage) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.dataMessage storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"dataMessage"];
  }
  if (self.hasSyncMessage) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.syncMessage storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"syncMessage"];
  }
  if (self.hasCallMessage) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.callMessage storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"callMessage"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosContent class]]) {
    return NO;
  }
  OWSSignalServiceProtosContent *otherMessage = other;
  return
      self.hasDataMessage == otherMessage.hasDataMessage &&
      (!self.hasDataMessage || [self.dataMessage isEqual:otherMessage.dataMessage]) &&
      self.hasSyncMessage == otherMessage.hasSyncMessage &&
      (!self.hasSyncMessage || [self.syncMessage isEqual:otherMessage.syncMessage]) &&
      self.hasCallMessage == otherMessage.hasCallMessage &&
      (!self.hasCallMessage || [self.callMessage isEqual:otherMessage.callMessage]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasDataMessage) {
    hashCode = hashCode * 31 + [self.dataMessage hash];
  }
  if (self.hasSyncMessage) {
    hashCode = hashCode * 31 + [self.syncMessage hash];
  }
  if (self.hasCallMessage) {
    hashCode = hashCode * 31 + [self.callMessage hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosContentBuilder()
@property (strong) OWSSignalServiceProtosContent* resultContent;
@end

@implementation OWSSignalServiceProtosContentBuilder
@synthesize resultContent;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultContent = [[OWSSignalServiceProtosContent alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultContent;
}
- (OWSSignalServiceProtosContentBuilder*) clear {
  self.resultContent = [[OWSSignalServiceProtosContent alloc] init];
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) clone {
  return [OWSSignalServiceProtosContent builderWithPrototype:resultContent];
}
- (OWSSignalServiceProtosContent*) defaultInstance {
  return [OWSSignalServiceProtosContent defaultInstance];
}
- (OWSSignalServiceProtosContent*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosContent*) buildPartial {
  OWSSignalServiceProtosContent* returnMe = resultContent;
  self.resultContent = nil;
  return returnMe;
}
- (OWSSignalServiceProtosContentBuilder*) mergeFrom:(OWSSignalServiceProtosContent*) other {
  if (other == [OWSSignalServiceProtosContent defaultInstance]) {
    return self;
  }
  if (other.hasDataMessage) {
    [self mergeDataMessage:other.dataMessage];
  }
  if (other.hasSyncMessage) {
    [self mergeSyncMessage:other.syncMessage];
  }
  if (other.hasCallMessage) {
    [self mergeCallMessage:other.callMessage];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosContentBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        OWSSignalServiceProtosDataMessageBuilder* subBuilder = [OWSSignalServiceProtosDataMessage builder];
        if (self.hasDataMessage) {
          [subBuilder mergeFrom:self.dataMessage];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setDataMessage:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        OWSSignalServiceProtosSyncMessageBuilder* subBuilder = [OWSSignalServiceProtosSyncMessage builder];
        if (self.hasSyncMessage) {
          [subBuilder mergeFrom:self.syncMessage];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setSyncMessage:[subBuilder buildPartial]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosCallMessageBuilder* subBuilder = [OWSSignalServiceProtosCallMessage builder];
        if (self.hasCallMessage) {
          [subBuilder mergeFrom:self.callMessage];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setCallMessage:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasDataMessage {
  return resultContent.hasDataMessage;
}
- (OWSSignalServiceProtosDataMessage*) dataMessage {
  return resultContent.dataMessage;
}
- (OWSSignalServiceProtosContentBuilder*) setDataMessage:(OWSSignalServiceProtosDataMessage*) value {
  resultContent.hasDataMessage = YES;
  resultContent.dataMessage = value;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) setDataMessageBuilder:(OWSSignalServiceProtosDataMessageBuilder*) builderForValue {
  return [self setDataMessage:[builderForValue build]];
}
- (OWSSignalServiceProtosContentBuilder*) mergeDataMessage:(OWSSignalServiceProtosDataMessage*) value {
  if (resultContent.hasDataMessage &&
      resultContent.dataMessage != [OWSSignalServiceProtosDataMessage defaultInstance]) {
    resultContent.dataMessage =
      [[[OWSSignalServiceProtosDataMessage builderWithPrototype:resultContent.dataMessage] mergeFrom:value] buildPartial];
  } else {
    resultContent.dataMessage = value;
  }
  resultContent.hasDataMessage = YES;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) clearDataMessage {
  resultContent.hasDataMessage = NO;
  resultContent.dataMessage = [OWSSignalServiceProtosDataMessage defaultInstance];
  return self;
}
- (BOOL) hasSyncMessage {
  return resultContent.hasSyncMessage;
}
- (OWSSignalServiceProtosSyncMessage*) syncMessage {
  return resultContent.syncMessage;
}
- (OWSSignalServiceProtosContentBuilder*) setSyncMessage:(OWSSignalServiceProtosSyncMessage*) value {
  resultContent.hasSyncMessage = YES;
  resultContent.syncMessage = value;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) setSyncMessageBuilder:(OWSSignalServiceProtosSyncMessageBuilder*) builderForValue {
  return [self setSyncMessage:[builderForValue build]];
}
- (OWSSignalServiceProtosContentBuilder*) mergeSyncMessage:(OWSSignalServiceProtosSyncMessage*) value {
  if (resultContent.hasSyncMessage &&
      resultContent.syncMessage != [OWSSignalServiceProtosSyncMessage defaultInstance]) {
    resultContent.syncMessage =
      [[[OWSSignalServiceProtosSyncMessage builderWithPrototype:resultContent.syncMessage] mergeFrom:value] buildPartial];
  } else {
    resultContent.syncMessage = value;
  }
  resultContent.hasSyncMessage = YES;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) clearSyncMessage {
  resultContent.hasSyncMessage = NO;
  resultContent.syncMessage = [OWSSignalServiceProtosSyncMessage defaultInstance];
  return self;
}
- (BOOL) hasCallMessage {
  return resultContent.hasCallMessage;
}
- (OWSSignalServiceProtosCallMessage*) callMessage {
  return resultContent.callMessage;
}
- (OWSSignalServiceProtosContentBuilder*) setCallMessage:(OWSSignalServiceProtosCallMessage*) value {
  resultContent.hasCallMessage = YES;
  resultContent.callMessage = value;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) setCallMessageBuilder:(OWSSignalServiceProtosCallMessageBuilder*) builderForValue {
  return [self setCallMessage:[builderForValue build]];
}
- (OWSSignalServiceProtosContentBuilder*) mergeCallMessage:(OWSSignalServiceProtosCallMessage*) value {
  if (resultContent.hasCallMessage &&
      resultContent.callMessage != [OWSSignalServiceProtosCallMessage defaultInstance]) {
    resultContent.callMessage =
      [[[OWSSignalServiceProtosCallMessage builderWithPrototype:resultContent.callMessage] mergeFrom:value] buildPartial];
  } else {
    resultContent.callMessage = value;
  }
  resultContent.hasCallMessage = YES;
  return self;
}
- (OWSSignalServiceProtosContentBuilder*) clearCallMessage {
  resultContent.hasCallMessage = NO;
  resultContent.callMessage = [OWSSignalServiceProtosCallMessage defaultInstance];
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessage ()
@property (strong) OWSSignalServiceProtosCallMessageOffer* offer;
@property (strong) OWSSignalServiceProtosCallMessageAnswer* answer;
@property (strong) NSMutableArray<OWSSignalServiceProtosCallMessageIceUpdate*> * iceUpdateArray;
@property (strong) OWSSignalServiceProtosCallMessageHangup* hangup;
@property (strong) OWSSignalServiceProtosCallMessageBusy* busy;
@end

@implementation OWSSignalServiceProtosCallMessage

- (BOOL) hasOffer {
  return !!hasOffer_;
}
- (void) setHasOffer:(BOOL) _value_ {
  hasOffer_ = !!_value_;
}
@synthesize offer;
- (BOOL) hasAnswer {
  return !!hasAnswer_;
}
- (void) setHasAnswer:(BOOL) _value_ {
  hasAnswer_ = !!_value_;
}
@synthesize answer;
@synthesize iceUpdateArray;
@dynamic iceUpdate;
- (BOOL) hasHangup {
  return !!hasHangup_;
}
- (void) setHasHangup:(BOOL) _value_ {
  hasHangup_ = !!_value_;
}
@synthesize hangup;
- (BOOL) hasBusy {
  return !!hasBusy_;
}
- (void) setHasBusy:(BOOL) _value_ {
  hasBusy_ = !!_value_;
}
@synthesize busy;
- (instancetype) init {
  if ((self = [super init])) {
    self.offer = [OWSSignalServiceProtosCallMessageOffer defaultInstance];
    self.answer = [OWSSignalServiceProtosCallMessageAnswer defaultInstance];
    self.hangup = [OWSSignalServiceProtosCallMessageHangup defaultInstance];
    self.busy = [OWSSignalServiceProtosCallMessageBusy defaultInstance];
  }
  return self;
}
static OWSSignalServiceProtosCallMessage* defaultOWSSignalServiceProtosCallMessageInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessage class]) {
    defaultOWSSignalServiceProtosCallMessageInstance = [[OWSSignalServiceProtosCallMessage alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageInstance;
}
- (NSArray<OWSSignalServiceProtosCallMessageIceUpdate*> *)iceUpdate {
  return iceUpdateArray;
}
- (OWSSignalServiceProtosCallMessageIceUpdate*)iceUpdateAtIndex:(NSUInteger)index {
  return [iceUpdateArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasOffer) {
    [output writeMessage:1 value:self.offer];
  }
  if (self.hasAnswer) {
    [output writeMessage:2 value:self.answer];
  }
  [self.iceUpdateArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosCallMessageIceUpdate *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:3 value:element];
  }];
  if (self.hasHangup) {
    [output writeMessage:4 value:self.hangup];
  }
  if (self.hasBusy) {
    [output writeMessage:5 value:self.busy];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasOffer) {
    size_ += computeMessageSize(1, self.offer);
  }
  if (self.hasAnswer) {
    size_ += computeMessageSize(2, self.answer);
  }
  [self.iceUpdateArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosCallMessageIceUpdate *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(3, element);
  }];
  if (self.hasHangup) {
    size_ += computeMessageSize(4, self.hangup);
  }
  if (self.hasBusy) {
    size_ += computeMessageSize(5, self.busy);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessage*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessage*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessage*)[[[OWSSignalServiceProtosCallMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessage*) prototype {
  return [[OWSSignalServiceProtosCallMessage builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageBuilder*) builder {
  return [OWSSignalServiceProtosCallMessage builder];
}
- (OWSSignalServiceProtosCallMessageBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasOffer) {
    [output appendFormat:@"%@%@ {\n", indent, @"offer"];
    [self.offer writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasAnswer) {
    [output appendFormat:@"%@%@ {\n", indent, @"answer"];
    [self.answer writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.iceUpdateArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosCallMessageIceUpdate *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"iceUpdate"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  if (self.hasHangup) {
    [output appendFormat:@"%@%@ {\n", indent, @"hangup"];
    [self.hangup writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasBusy) {
    [output appendFormat:@"%@%@ {\n", indent, @"busy"];
    [self.busy writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasOffer) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.offer storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"offer"];
  }
  if (self.hasAnswer) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.answer storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"answer"];
  }
  for (OWSSignalServiceProtosCallMessageIceUpdate* element in self.iceUpdateArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"iceUpdate"];
  }
  if (self.hasHangup) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.hangup storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"hangup"];
  }
  if (self.hasBusy) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.busy storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"busy"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessage class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessage *otherMessage = other;
  return
      self.hasOffer == otherMessage.hasOffer &&
      (!self.hasOffer || [self.offer isEqual:otherMessage.offer]) &&
      self.hasAnswer == otherMessage.hasAnswer &&
      (!self.hasAnswer || [self.answer isEqual:otherMessage.answer]) &&
      [self.iceUpdateArray isEqualToArray:otherMessage.iceUpdateArray] &&
      self.hasHangup == otherMessage.hasHangup &&
      (!self.hasHangup || [self.hangup isEqual:otherMessage.hangup]) &&
      self.hasBusy == otherMessage.hasBusy &&
      (!self.hasBusy || [self.busy isEqual:otherMessage.busy]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasOffer) {
    hashCode = hashCode * 31 + [self.offer hash];
  }
  if (self.hasAnswer) {
    hashCode = hashCode * 31 + [self.answer hash];
  }
  [self.iceUpdateArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosCallMessageIceUpdate *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasHangup) {
    hashCode = hashCode * 31 + [self.hangup hash];
  }
  if (self.hasBusy) {
    hashCode = hashCode * 31 + [self.busy hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageOffer ()
@property UInt64 id;
@property (strong) NSString* sessionDescription;
@end

@implementation OWSSignalServiceProtosCallMessageOffer

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasSessionDescription {
  return !!hasSessionDescription_;
}
- (void) setHasSessionDescription:(BOOL) _value_ {
  hasSessionDescription_ = !!_value_;
}
@synthesize sessionDescription;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.sessionDescription = @"";
  }
  return self;
}
static OWSSignalServiceProtosCallMessageOffer* defaultOWSSignalServiceProtosCallMessageOfferInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessageOffer class]) {
    defaultOWSSignalServiceProtosCallMessageOfferInstance = [[OWSSignalServiceProtosCallMessageOffer alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageOfferInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageOfferInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeUInt64:1 value:self.id];
  }
  if (self.hasSessionDescription) {
    [output writeString:2 value:self.sessionDescription];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeUInt64Size(1, self.id);
  }
  if (self.hasSessionDescription) {
    size_ += computeStringSize(2, self.sessionDescription);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageOffer*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageOffer*)[[[OWSSignalServiceProtosCallMessageOffer builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageOfferBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageOfferBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageOfferBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessageOffer*) prototype {
  return [[OWSSignalServiceProtosCallMessageOffer builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) builder {
  return [OWSSignalServiceProtosCallMessageOffer builder];
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessageOffer builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasSessionDescription) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sessionDescription", self.sessionDescription];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasSessionDescription) {
    [dictionary setObject: self.sessionDescription forKey: @"sessionDescription"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessageOffer class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessageOffer *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasSessionDescription == otherMessage.hasSessionDescription &&
      (!self.hasSessionDescription || [self.sessionDescription isEqual:otherMessage.sessionDescription]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasSessionDescription) {
    hashCode = hashCode * 31 + [self.sessionDescription hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageOfferBuilder()
@property (strong) OWSSignalServiceProtosCallMessageOffer* resultOffer;
@end

@implementation OWSSignalServiceProtosCallMessageOfferBuilder
@synthesize resultOffer;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultOffer = [[OWSSignalServiceProtosCallMessageOffer alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultOffer;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) clear {
  self.resultOffer = [[OWSSignalServiceProtosCallMessageOffer alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) clone {
  return [OWSSignalServiceProtosCallMessageOffer builderWithPrototype:resultOffer];
}
- (OWSSignalServiceProtosCallMessageOffer*) defaultInstance {
  return [OWSSignalServiceProtosCallMessageOffer defaultInstance];
}
- (OWSSignalServiceProtosCallMessageOffer*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessageOffer*) buildPartial {
  OWSSignalServiceProtosCallMessageOffer* returnMe = resultOffer;
  self.resultOffer = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessageOffer*) other {
  if (other == [OWSSignalServiceProtosCallMessageOffer defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasSessionDescription) {
    [self setSessionDescription:other.sessionDescription];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readUInt64]];
        break;
      }
      case 18: {
        [self setSessionDescription:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultOffer.hasId;
}
- (UInt64) id {
  return resultOffer.id;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) setId:(UInt64) value {
  resultOffer.hasId = YES;
  resultOffer.id = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) clearId {
  resultOffer.hasId = NO;
  resultOffer.id = 0L;
  return self;
}
- (BOOL) hasSessionDescription {
  return resultOffer.hasSessionDescription;
}
- (NSString*) sessionDescription {
  return resultOffer.sessionDescription;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) setSessionDescription:(NSString*) value {
  resultOffer.hasSessionDescription = YES;
  resultOffer.sessionDescription = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageOfferBuilder*) clearSessionDescription {
  resultOffer.hasSessionDescription = NO;
  resultOffer.sessionDescription = @"";
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessageAnswer ()
@property UInt64 id;
@property (strong) NSString* sessionDescription;
@end

@implementation OWSSignalServiceProtosCallMessageAnswer

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasSessionDescription {
  return !!hasSessionDescription_;
}
- (void) setHasSessionDescription:(BOOL) _value_ {
  hasSessionDescription_ = !!_value_;
}
@synthesize sessionDescription;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.sessionDescription = @"";
  }
  return self;
}
static OWSSignalServiceProtosCallMessageAnswer* defaultOWSSignalServiceProtosCallMessageAnswerInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessageAnswer class]) {
    defaultOWSSignalServiceProtosCallMessageAnswerInstance = [[OWSSignalServiceProtosCallMessageAnswer alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageAnswerInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageAnswerInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeUInt64:1 value:self.id];
  }
  if (self.hasSessionDescription) {
    [output writeString:2 value:self.sessionDescription];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeUInt64Size(1, self.id);
  }
  if (self.hasSessionDescription) {
    size_ += computeStringSize(2, self.sessionDescription);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageAnswer*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageAnswer*)[[[OWSSignalServiceProtosCallMessageAnswer builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageAnswerBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageAnswerBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageAnswerBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessageAnswer*) prototype {
  return [[OWSSignalServiceProtosCallMessageAnswer builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) builder {
  return [OWSSignalServiceProtosCallMessageAnswer builder];
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessageAnswer builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasSessionDescription) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sessionDescription", self.sessionDescription];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasSessionDescription) {
    [dictionary setObject: self.sessionDescription forKey: @"sessionDescription"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessageAnswer class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessageAnswer *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasSessionDescription == otherMessage.hasSessionDescription &&
      (!self.hasSessionDescription || [self.sessionDescription isEqual:otherMessage.sessionDescription]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasSessionDescription) {
    hashCode = hashCode * 31 + [self.sessionDescription hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageAnswerBuilder()
@property (strong) OWSSignalServiceProtosCallMessageAnswer* resultAnswer;
@end

@implementation OWSSignalServiceProtosCallMessageAnswerBuilder
@synthesize resultAnswer;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAnswer = [[OWSSignalServiceProtosCallMessageAnswer alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAnswer;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) clear {
  self.resultAnswer = [[OWSSignalServiceProtosCallMessageAnswer alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) clone {
  return [OWSSignalServiceProtosCallMessageAnswer builderWithPrototype:resultAnswer];
}
- (OWSSignalServiceProtosCallMessageAnswer*) defaultInstance {
  return [OWSSignalServiceProtosCallMessageAnswer defaultInstance];
}
- (OWSSignalServiceProtosCallMessageAnswer*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessageAnswer*) buildPartial {
  OWSSignalServiceProtosCallMessageAnswer* returnMe = resultAnswer;
  self.resultAnswer = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessageAnswer*) other {
  if (other == [OWSSignalServiceProtosCallMessageAnswer defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasSessionDescription) {
    [self setSessionDescription:other.sessionDescription];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readUInt64]];
        break;
      }
      case 18: {
        [self setSessionDescription:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultAnswer.hasId;
}
- (UInt64) id {
  return resultAnswer.id;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) setId:(UInt64) value {
  resultAnswer.hasId = YES;
  resultAnswer.id = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) clearId {
  resultAnswer.hasId = NO;
  resultAnswer.id = 0L;
  return self;
}
- (BOOL) hasSessionDescription {
  return resultAnswer.hasSessionDescription;
}
- (NSString*) sessionDescription {
  return resultAnswer.sessionDescription;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) setSessionDescription:(NSString*) value {
  resultAnswer.hasSessionDescription = YES;
  resultAnswer.sessionDescription = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageAnswerBuilder*) clearSessionDescription {
  resultAnswer.hasSessionDescription = NO;
  resultAnswer.sessionDescription = @"";
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessageIceUpdate ()
@property UInt64 id;
@property (strong) NSString* sdpMid;
@property UInt32 sdpMlineIndex;
@property (strong) NSString* sdp;
@end

@implementation OWSSignalServiceProtosCallMessageIceUpdate

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasSdpMid {
  return !!hasSdpMid_;
}
- (void) setHasSdpMid:(BOOL) _value_ {
  hasSdpMid_ = !!_value_;
}
@synthesize sdpMid;
- (BOOL) hasSdpMlineIndex {
  return !!hasSdpMlineIndex_;
}
- (void) setHasSdpMlineIndex:(BOOL) _value_ {
  hasSdpMlineIndex_ = !!_value_;
}
@synthesize sdpMlineIndex;
- (BOOL) hasSdp {
  return !!hasSdp_;
}
- (void) setHasSdp:(BOOL) _value_ {
  hasSdp_ = !!_value_;
}
@synthesize sdp;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.sdpMid = @"";
    self.sdpMlineIndex = 0;
    self.sdp = @"";
  }
  return self;
}
static OWSSignalServiceProtosCallMessageIceUpdate* defaultOWSSignalServiceProtosCallMessageIceUpdateInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessageIceUpdate class]) {
    defaultOWSSignalServiceProtosCallMessageIceUpdateInstance = [[OWSSignalServiceProtosCallMessageIceUpdate alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageIceUpdateInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageIceUpdateInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeUInt64:1 value:self.id];
  }
  if (self.hasSdpMid) {
    [output writeString:2 value:self.sdpMid];
  }
  if (self.hasSdpMlineIndex) {
    [output writeUInt32:3 value:self.sdpMlineIndex];
  }
  if (self.hasSdp) {
    [output writeString:4 value:self.sdp];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeUInt64Size(1, self.id);
  }
  if (self.hasSdpMid) {
    size_ += computeStringSize(2, self.sdpMid);
  }
  if (self.hasSdpMlineIndex) {
    size_ += computeUInt32Size(3, self.sdpMlineIndex);
  }
  if (self.hasSdp) {
    size_ += computeStringSize(4, self.sdp);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdate*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageIceUpdate*)[[[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageIceUpdateBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessageIceUpdate*) prototype {
  return [[OWSSignalServiceProtosCallMessageIceUpdate builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) builder {
  return [OWSSignalServiceProtosCallMessageIceUpdate builder];
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessageIceUpdate builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasSdpMid) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sdpMid", self.sdpMid];
  }
  if (self.hasSdpMlineIndex) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sdpMlineIndex", [NSNumber numberWithInteger:self.sdpMlineIndex]];
  }
  if (self.hasSdp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sdp", self.sdp];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasSdpMid) {
    [dictionary setObject: self.sdpMid forKey: @"sdpMid"];
  }
  if (self.hasSdpMlineIndex) {
    [dictionary setObject: [NSNumber numberWithInteger:self.sdpMlineIndex] forKey: @"sdpMlineIndex"];
  }
  if (self.hasSdp) {
    [dictionary setObject: self.sdp forKey: @"sdp"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessageIceUpdate class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessageIceUpdate *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasSdpMid == otherMessage.hasSdpMid &&
      (!self.hasSdpMid || [self.sdpMid isEqual:otherMessage.sdpMid]) &&
      self.hasSdpMlineIndex == otherMessage.hasSdpMlineIndex &&
      (!self.hasSdpMlineIndex || self.sdpMlineIndex == otherMessage.sdpMlineIndex) &&
      self.hasSdp == otherMessage.hasSdp &&
      (!self.hasSdp || [self.sdp isEqual:otherMessage.sdp]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasSdpMid) {
    hashCode = hashCode * 31 + [self.sdpMid hash];
  }
  if (self.hasSdpMlineIndex) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.sdpMlineIndex] hash];
  }
  if (self.hasSdp) {
    hashCode = hashCode * 31 + [self.sdp hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageIceUpdateBuilder()
@property (strong) OWSSignalServiceProtosCallMessageIceUpdate* resultIceUpdate;
@end

@implementation OWSSignalServiceProtosCallMessageIceUpdateBuilder
@synthesize resultIceUpdate;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultIceUpdate = [[OWSSignalServiceProtosCallMessageIceUpdate alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultIceUpdate;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clear {
  self.resultIceUpdate = [[OWSSignalServiceProtosCallMessageIceUpdate alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clone {
  return [OWSSignalServiceProtosCallMessageIceUpdate builderWithPrototype:resultIceUpdate];
}
- (OWSSignalServiceProtosCallMessageIceUpdate*) defaultInstance {
  return [OWSSignalServiceProtosCallMessageIceUpdate defaultInstance];
}
- (OWSSignalServiceProtosCallMessageIceUpdate*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessageIceUpdate*) buildPartial {
  OWSSignalServiceProtosCallMessageIceUpdate* returnMe = resultIceUpdate;
  self.resultIceUpdate = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessageIceUpdate*) other {
  if (other == [OWSSignalServiceProtosCallMessageIceUpdate defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasSdpMid) {
    [self setSdpMid:other.sdpMid];
  }
  if (other.hasSdpMlineIndex) {
    [self setSdpMlineIndex:other.sdpMlineIndex];
  }
  if (other.hasSdp) {
    [self setSdp:other.sdp];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readUInt64]];
        break;
      }
      case 18: {
        [self setSdpMid:[input readString]];
        break;
      }
      case 24: {
        [self setSdpMlineIndex:[input readUInt32]];
        break;
      }
      case 34: {
        [self setSdp:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultIceUpdate.hasId;
}
- (UInt64) id {
  return resultIceUpdate.id;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) setId:(UInt64) value {
  resultIceUpdate.hasId = YES;
  resultIceUpdate.id = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clearId {
  resultIceUpdate.hasId = NO;
  resultIceUpdate.id = 0L;
  return self;
}
- (BOOL) hasSdpMid {
  return resultIceUpdate.hasSdpMid;
}
- (NSString*) sdpMid {
  return resultIceUpdate.sdpMid;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) setSdpMid:(NSString*) value {
  resultIceUpdate.hasSdpMid = YES;
  resultIceUpdate.sdpMid = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clearSdpMid {
  resultIceUpdate.hasSdpMid = NO;
  resultIceUpdate.sdpMid = @"";
  return self;
}
- (BOOL) hasSdpMlineIndex {
  return resultIceUpdate.hasSdpMlineIndex;
}
- (UInt32) sdpMlineIndex {
  return resultIceUpdate.sdpMlineIndex;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) setSdpMlineIndex:(UInt32) value {
  resultIceUpdate.hasSdpMlineIndex = YES;
  resultIceUpdate.sdpMlineIndex = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clearSdpMlineIndex {
  resultIceUpdate.hasSdpMlineIndex = NO;
  resultIceUpdate.sdpMlineIndex = 0;
  return self;
}
- (BOOL) hasSdp {
  return resultIceUpdate.hasSdp;
}
- (NSString*) sdp {
  return resultIceUpdate.sdp;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) setSdp:(NSString*) value {
  resultIceUpdate.hasSdp = YES;
  resultIceUpdate.sdp = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageIceUpdateBuilder*) clearSdp {
  resultIceUpdate.hasSdp = NO;
  resultIceUpdate.sdp = @"";
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessageBusy ()
@property UInt64 id;
@end

@implementation OWSSignalServiceProtosCallMessageBusy

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
  }
  return self;
}
static OWSSignalServiceProtosCallMessageBusy* defaultOWSSignalServiceProtosCallMessageBusyInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessageBusy class]) {
    defaultOWSSignalServiceProtosCallMessageBusyInstance = [[OWSSignalServiceProtosCallMessageBusy alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageBusyInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageBusyInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeUInt64:1 value:self.id];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeUInt64Size(1, self.id);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageBusy*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageBusy*)[[[OWSSignalServiceProtosCallMessageBusy builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageBusyBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageBusyBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageBusyBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessageBusy*) prototype {
  return [[OWSSignalServiceProtosCallMessageBusy builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) builder {
  return [OWSSignalServiceProtosCallMessageBusy builder];
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessageBusy builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessageBusy class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessageBusy *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageBusyBuilder()
@property (strong) OWSSignalServiceProtosCallMessageBusy* resultBusy;
@end

@implementation OWSSignalServiceProtosCallMessageBusyBuilder
@synthesize resultBusy;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultBusy = [[OWSSignalServiceProtosCallMessageBusy alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultBusy;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) clear {
  self.resultBusy = [[OWSSignalServiceProtosCallMessageBusy alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) clone {
  return [OWSSignalServiceProtosCallMessageBusy builderWithPrototype:resultBusy];
}
- (OWSSignalServiceProtosCallMessageBusy*) defaultInstance {
  return [OWSSignalServiceProtosCallMessageBusy defaultInstance];
}
- (OWSSignalServiceProtosCallMessageBusy*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessageBusy*) buildPartial {
  OWSSignalServiceProtosCallMessageBusy* returnMe = resultBusy;
  self.resultBusy = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessageBusy*) other {
  if (other == [OWSSignalServiceProtosCallMessageBusy defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readUInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultBusy.hasId;
}
- (UInt64) id {
  return resultBusy.id;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) setId:(UInt64) value {
  resultBusy.hasId = YES;
  resultBusy.id = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageBusyBuilder*) clearId {
  resultBusy.hasId = NO;
  resultBusy.id = 0L;
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessageHangup ()
@property UInt64 id;
@end

@implementation OWSSignalServiceProtosCallMessageHangup

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
  }
  return self;
}
static OWSSignalServiceProtosCallMessageHangup* defaultOWSSignalServiceProtosCallMessageHangupInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosCallMessageHangup class]) {
    defaultOWSSignalServiceProtosCallMessageHangupInstance = [[OWSSignalServiceProtosCallMessageHangup alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageHangupInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosCallMessageHangupInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeUInt64:1 value:self.id];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeUInt64Size(1, self.id);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosCallMessageHangup*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosCallMessageHangup*)[[[OWSSignalServiceProtosCallMessageHangup builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosCallMessageHangupBuilder*) builder {
  return [[OWSSignalServiceProtosCallMessageHangupBuilder alloc] init];
}
+ (OWSSignalServiceProtosCallMessageHangupBuilder*) builderWithPrototype:(OWSSignalServiceProtosCallMessageHangup*) prototype {
  return [[OWSSignalServiceProtosCallMessageHangup builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) builder {
  return [OWSSignalServiceProtosCallMessageHangup builder];
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) toBuilder {
  return [OWSSignalServiceProtosCallMessageHangup builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosCallMessageHangup class]]) {
    return NO;
  }
  OWSSignalServiceProtosCallMessageHangup *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosCallMessageHangupBuilder()
@property (strong) OWSSignalServiceProtosCallMessageHangup* resultHangup;
@end

@implementation OWSSignalServiceProtosCallMessageHangupBuilder
@synthesize resultHangup;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultHangup = [[OWSSignalServiceProtosCallMessageHangup alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultHangup;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) clear {
  self.resultHangup = [[OWSSignalServiceProtosCallMessageHangup alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) clone {
  return [OWSSignalServiceProtosCallMessageHangup builderWithPrototype:resultHangup];
}
- (OWSSignalServiceProtosCallMessageHangup*) defaultInstance {
  return [OWSSignalServiceProtosCallMessageHangup defaultInstance];
}
- (OWSSignalServiceProtosCallMessageHangup*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessageHangup*) buildPartial {
  OWSSignalServiceProtosCallMessageHangup* returnMe = resultHangup;
  self.resultHangup = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessageHangup*) other {
  if (other == [OWSSignalServiceProtosCallMessageHangup defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readUInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultHangup.hasId;
}
- (UInt64) id {
  return resultHangup.id;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) setId:(UInt64) value {
  resultHangup.hasId = YES;
  resultHangup.id = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageHangupBuilder*) clearId {
  resultHangup.hasId = NO;
  resultHangup.id = 0L;
  return self;
}
@end

@interface OWSSignalServiceProtosCallMessageBuilder()
@property (strong) OWSSignalServiceProtosCallMessage* resultCallMessage;
@end

@implementation OWSSignalServiceProtosCallMessageBuilder
@synthesize resultCallMessage;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultCallMessage = [[OWSSignalServiceProtosCallMessage alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultCallMessage;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clear {
  self.resultCallMessage = [[OWSSignalServiceProtosCallMessage alloc] init];
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clone {
  return [OWSSignalServiceProtosCallMessage builderWithPrototype:resultCallMessage];
}
- (OWSSignalServiceProtosCallMessage*) defaultInstance {
  return [OWSSignalServiceProtosCallMessage defaultInstance];
}
- (OWSSignalServiceProtosCallMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosCallMessage*) buildPartial {
  OWSSignalServiceProtosCallMessage* returnMe = resultCallMessage;
  self.resultCallMessage = nil;
  return returnMe;
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeFrom:(OWSSignalServiceProtosCallMessage*) other {
  if (other == [OWSSignalServiceProtosCallMessage defaultInstance]) {
    return self;
  }
  if (other.hasOffer) {
    [self mergeOffer:other.offer];
  }
  if (other.hasAnswer) {
    [self mergeAnswer:other.answer];
  }
  if (other.iceUpdateArray.count > 0) {
    if (resultCallMessage.iceUpdateArray == nil) {
      resultCallMessage.iceUpdateArray = [[NSMutableArray alloc] initWithArray:other.iceUpdateArray];
    } else {
      [resultCallMessage.iceUpdateArray addObjectsFromArray:other.iceUpdateArray];
    }
  }
  if (other.hasHangup) {
    [self mergeHangup:other.hangup];
  }
  if (other.hasBusy) {
    [self mergeBusy:other.busy];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        OWSSignalServiceProtosCallMessageOfferBuilder* subBuilder = [OWSSignalServiceProtosCallMessageOffer builder];
        if (self.hasOffer) {
          [subBuilder mergeFrom:self.offer];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setOffer:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        OWSSignalServiceProtosCallMessageAnswerBuilder* subBuilder = [OWSSignalServiceProtosCallMessageAnswer builder];
        if (self.hasAnswer) {
          [subBuilder mergeFrom:self.answer];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setAnswer:[subBuilder buildPartial]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosCallMessageIceUpdateBuilder* subBuilder = [OWSSignalServiceProtosCallMessageIceUpdate builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addIceUpdate:[subBuilder buildPartial]];
        break;
      }
      case 34: {
        OWSSignalServiceProtosCallMessageHangupBuilder* subBuilder = [OWSSignalServiceProtosCallMessageHangup builder];
        if (self.hasHangup) {
          [subBuilder mergeFrom:self.hangup];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setHangup:[subBuilder buildPartial]];
        break;
      }
      case 42: {
        OWSSignalServiceProtosCallMessageBusyBuilder* subBuilder = [OWSSignalServiceProtosCallMessageBusy builder];
        if (self.hasBusy) {
          [subBuilder mergeFrom:self.busy];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setBusy:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasOffer {
  return resultCallMessage.hasOffer;
}
- (OWSSignalServiceProtosCallMessageOffer*) offer {
  return resultCallMessage.offer;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setOffer:(OWSSignalServiceProtosCallMessageOffer*) value {
  resultCallMessage.hasOffer = YES;
  resultCallMessage.offer = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setOfferBuilder:(OWSSignalServiceProtosCallMessageOfferBuilder*) builderForValue {
  return [self setOffer:[builderForValue build]];
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeOffer:(OWSSignalServiceProtosCallMessageOffer*) value {
  if (resultCallMessage.hasOffer &&
      resultCallMessage.offer != [OWSSignalServiceProtosCallMessageOffer defaultInstance]) {
    resultCallMessage.offer =
      [[[OWSSignalServiceProtosCallMessageOffer builderWithPrototype:resultCallMessage.offer] mergeFrom:value] buildPartial];
  } else {
    resultCallMessage.offer = value;
  }
  resultCallMessage.hasOffer = YES;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clearOffer {
  resultCallMessage.hasOffer = NO;
  resultCallMessage.offer = [OWSSignalServiceProtosCallMessageOffer defaultInstance];
  return self;
}
- (BOOL) hasAnswer {
  return resultCallMessage.hasAnswer;
}
- (OWSSignalServiceProtosCallMessageAnswer*) answer {
  return resultCallMessage.answer;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setAnswer:(OWSSignalServiceProtosCallMessageAnswer*) value {
  resultCallMessage.hasAnswer = YES;
  resultCallMessage.answer = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setAnswerBuilder:(OWSSignalServiceProtosCallMessageAnswerBuilder*) builderForValue {
  return [self setAnswer:[builderForValue build]];
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeAnswer:(OWSSignalServiceProtosCallMessageAnswer*) value {
  if (resultCallMessage.hasAnswer &&
      resultCallMessage.answer != [OWSSignalServiceProtosCallMessageAnswer defaultInstance]) {
    resultCallMessage.answer =
      [[[OWSSignalServiceProtosCallMessageAnswer builderWithPrototype:resultCallMessage.answer] mergeFrom:value] buildPartial];
  } else {
    resultCallMessage.answer = value;
  }
  resultCallMessage.hasAnswer = YES;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clearAnswer {
  resultCallMessage.hasAnswer = NO;
  resultCallMessage.answer = [OWSSignalServiceProtosCallMessageAnswer defaultInstance];
  return self;
}
- (NSMutableArray<OWSSignalServiceProtosCallMessageIceUpdate*> *)iceUpdate {
  return resultCallMessage.iceUpdateArray;
}
- (OWSSignalServiceProtosCallMessageIceUpdate*)iceUpdateAtIndex:(NSUInteger)index {
  return [resultCallMessage iceUpdateAtIndex:index];
}
- (OWSSignalServiceProtosCallMessageBuilder *)addIceUpdate:(OWSSignalServiceProtosCallMessageIceUpdate*)value {
  if (resultCallMessage.iceUpdateArray == nil) {
    resultCallMessage.iceUpdateArray = [[NSMutableArray alloc]init];
  }
  [resultCallMessage.iceUpdateArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder *)setIceUpdateArray:(NSArray<OWSSignalServiceProtosCallMessageIceUpdate*> *)array {
  resultCallMessage.iceUpdateArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder *)clearIceUpdate {
  resultCallMessage.iceUpdateArray = nil;
  return self;
}
- (BOOL) hasHangup {
  return resultCallMessage.hasHangup;
}
- (OWSSignalServiceProtosCallMessageHangup*) hangup {
  return resultCallMessage.hangup;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setHangup:(OWSSignalServiceProtosCallMessageHangup*) value {
  resultCallMessage.hasHangup = YES;
  resultCallMessage.hangup = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setHangupBuilder:(OWSSignalServiceProtosCallMessageHangupBuilder*) builderForValue {
  return [self setHangup:[builderForValue build]];
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeHangup:(OWSSignalServiceProtosCallMessageHangup*) value {
  if (resultCallMessage.hasHangup &&
      resultCallMessage.hangup != [OWSSignalServiceProtosCallMessageHangup defaultInstance]) {
    resultCallMessage.hangup =
      [[[OWSSignalServiceProtosCallMessageHangup builderWithPrototype:resultCallMessage.hangup] mergeFrom:value] buildPartial];
  } else {
    resultCallMessage.hangup = value;
  }
  resultCallMessage.hasHangup = YES;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clearHangup {
  resultCallMessage.hasHangup = NO;
  resultCallMessage.hangup = [OWSSignalServiceProtosCallMessageHangup defaultInstance];
  return self;
}
- (BOOL) hasBusy {
  return resultCallMessage.hasBusy;
}
- (OWSSignalServiceProtosCallMessageBusy*) busy {
  return resultCallMessage.busy;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setBusy:(OWSSignalServiceProtosCallMessageBusy*) value {
  resultCallMessage.hasBusy = YES;
  resultCallMessage.busy = value;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) setBusyBuilder:(OWSSignalServiceProtosCallMessageBusyBuilder*) builderForValue {
  return [self setBusy:[builderForValue build]];
}
- (OWSSignalServiceProtosCallMessageBuilder*) mergeBusy:(OWSSignalServiceProtosCallMessageBusy*) value {
  if (resultCallMessage.hasBusy &&
      resultCallMessage.busy != [OWSSignalServiceProtosCallMessageBusy defaultInstance]) {
    resultCallMessage.busy =
      [[[OWSSignalServiceProtosCallMessageBusy builderWithPrototype:resultCallMessage.busy] mergeFrom:value] buildPartial];
  } else {
    resultCallMessage.busy = value;
  }
  resultCallMessage.hasBusy = YES;
  return self;
}
- (OWSSignalServiceProtosCallMessageBuilder*) clearBusy {
  resultCallMessage.hasBusy = NO;
  resultCallMessage.busy = [OWSSignalServiceProtosCallMessageBusy defaultInstance];
  return self;
}
@end

@interface OWSSignalServiceProtosDataMessage ()
@property (strong) NSString* body;
@property (strong) NSMutableArray<OWSSignalServiceProtosAttachmentPointer*> * attachmentsArray;
@property (strong) OWSSignalServiceProtosGroupContext* group;
@property UInt32 flags;
@property UInt32 expireTimer;
@end

@implementation OWSSignalServiceProtosDataMessage

- (BOOL) hasBody {
  return !!hasBody_;
}
- (void) setHasBody:(BOOL) _value_ {
  hasBody_ = !!_value_;
}
@synthesize body;
@synthesize attachmentsArray;
@dynamic attachments;
- (BOOL) hasGroup {
  return !!hasGroup_;
}
- (void) setHasGroup:(BOOL) _value_ {
  hasGroup_ = !!_value_;
}
@synthesize group;
- (BOOL) hasFlags {
  return !!hasFlags_;
}
- (void) setHasFlags:(BOOL) _value_ {
  hasFlags_ = !!_value_;
}
@synthesize flags;
- (BOOL) hasExpireTimer {
  return !!hasExpireTimer_;
}
- (void) setHasExpireTimer:(BOOL) _value_ {
  hasExpireTimer_ = !!_value_;
}
@synthesize expireTimer;
- (instancetype) init {
  if ((self = [super init])) {
    self.body = @"";
    self.group = [OWSSignalServiceProtosGroupContext defaultInstance];
    self.flags = 0;
    self.expireTimer = 0;
  }
  return self;
}
static OWSSignalServiceProtosDataMessage* defaultOWSSignalServiceProtosDataMessageInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosDataMessage class]) {
    defaultOWSSignalServiceProtosDataMessageInstance = [[OWSSignalServiceProtosDataMessage alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosDataMessageInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosDataMessageInstance;
}
- (NSArray<OWSSignalServiceProtosAttachmentPointer*> *)attachments {
  return attachmentsArray;
}
- (OWSSignalServiceProtosAttachmentPointer*)attachmentsAtIndex:(NSUInteger)index {
  return [attachmentsArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasBody) {
    [output writeString:1 value:self.body];
  }
  [self.attachmentsArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosAttachmentPointer *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:2 value:element];
  }];
  if (self.hasGroup) {
    [output writeMessage:3 value:self.group];
  }
  if (self.hasFlags) {
    [output writeUInt32:4 value:self.flags];
  }
  if (self.hasExpireTimer) {
    [output writeUInt32:5 value:self.expireTimer];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasBody) {
    size_ += computeStringSize(1, self.body);
  }
  [self.attachmentsArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosAttachmentPointer *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(2, element);
  }];
  if (self.hasGroup) {
    size_ += computeMessageSize(3, self.group);
  }
  if (self.hasFlags) {
    size_ += computeUInt32Size(4, self.flags);
  }
  if (self.hasExpireTimer) {
    size_ += computeUInt32Size(5, self.expireTimer);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosDataMessage*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosDataMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosDataMessage*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosDataMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosDataMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosDataMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosDataMessage*)[[[OWSSignalServiceProtosDataMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosDataMessageBuilder*) builder {
  return [[OWSSignalServiceProtosDataMessageBuilder alloc] init];
}
+ (OWSSignalServiceProtosDataMessageBuilder*) builderWithPrototype:(OWSSignalServiceProtosDataMessage*) prototype {
  return [[OWSSignalServiceProtosDataMessage builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosDataMessageBuilder*) builder {
  return [OWSSignalServiceProtosDataMessage builder];
}
- (OWSSignalServiceProtosDataMessageBuilder*) toBuilder {
  return [OWSSignalServiceProtosDataMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasBody) {
    [output appendFormat:@"%@%@: %@\n", indent, @"body", self.body];
  }
  [self.attachmentsArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosAttachmentPointer *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"attachments"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  if (self.hasGroup) {
    [output appendFormat:@"%@%@ {\n", indent, @"group"];
    [self.group writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasFlags) {
    [output appendFormat:@"%@%@: %@\n", indent, @"flags", [NSNumber numberWithInteger:self.flags]];
  }
  if (self.hasExpireTimer) {
    [output appendFormat:@"%@%@: %@\n", indent, @"expireTimer", [NSNumber numberWithInteger:self.expireTimer]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasBody) {
    [dictionary setObject: self.body forKey: @"body"];
  }
  for (OWSSignalServiceProtosAttachmentPointer* element in self.attachmentsArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"attachments"];
  }
  if (self.hasGroup) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.group storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"group"];
  }
  if (self.hasFlags) {
    [dictionary setObject: [NSNumber numberWithInteger:self.flags] forKey: @"flags"];
  }
  if (self.hasExpireTimer) {
    [dictionary setObject: [NSNumber numberWithInteger:self.expireTimer] forKey: @"expireTimer"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosDataMessage class]]) {
    return NO;
  }
  OWSSignalServiceProtosDataMessage *otherMessage = other;
  return
      self.hasBody == otherMessage.hasBody &&
      (!self.hasBody || [self.body isEqual:otherMessage.body]) &&
      [self.attachmentsArray isEqualToArray:otherMessage.attachmentsArray] &&
      self.hasGroup == otherMessage.hasGroup &&
      (!self.hasGroup || [self.group isEqual:otherMessage.group]) &&
      self.hasFlags == otherMessage.hasFlags &&
      (!self.hasFlags || self.flags == otherMessage.flags) &&
      self.hasExpireTimer == otherMessage.hasExpireTimer &&
      (!self.hasExpireTimer || self.expireTimer == otherMessage.expireTimer) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasBody) {
    hashCode = hashCode * 31 + [self.body hash];
  }
  [self.attachmentsArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosAttachmentPointer *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasGroup) {
    hashCode = hashCode * 31 + [self.group hash];
  }
  if (self.hasFlags) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.flags] hash];
  }
  if (self.hasExpireTimer) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.expireTimer] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL OWSSignalServiceProtosDataMessageFlagsIsValidValue(OWSSignalServiceProtosDataMessageFlags value) {
  switch (value) {
    case OWSSignalServiceProtosDataMessageFlagsEndSession:
    case OWSSignalServiceProtosDataMessageFlagsExpirationTimerUpdate:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromOWSSignalServiceProtosDataMessageFlags(OWSSignalServiceProtosDataMessageFlags value) {
  switch (value) {
    case OWSSignalServiceProtosDataMessageFlagsEndSession:
      return @"OWSSignalServiceProtosDataMessageFlagsEndSession";
    case OWSSignalServiceProtosDataMessageFlagsExpirationTimerUpdate:
      return @"OWSSignalServiceProtosDataMessageFlagsExpirationTimerUpdate";
    default:
      return nil;
  }
}

@interface OWSSignalServiceProtosDataMessageBuilder()
@property (strong) OWSSignalServiceProtosDataMessage* resultDataMessage;
@end

@implementation OWSSignalServiceProtosDataMessageBuilder
@synthesize resultDataMessage;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultDataMessage = [[OWSSignalServiceProtosDataMessage alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultDataMessage;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clear {
  self.resultDataMessage = [[OWSSignalServiceProtosDataMessage alloc] init];
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clone {
  return [OWSSignalServiceProtosDataMessage builderWithPrototype:resultDataMessage];
}
- (OWSSignalServiceProtosDataMessage*) defaultInstance {
  return [OWSSignalServiceProtosDataMessage defaultInstance];
}
- (OWSSignalServiceProtosDataMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosDataMessage*) buildPartial {
  OWSSignalServiceProtosDataMessage* returnMe = resultDataMessage;
  self.resultDataMessage = nil;
  return returnMe;
}
- (OWSSignalServiceProtosDataMessageBuilder*) mergeFrom:(OWSSignalServiceProtosDataMessage*) other {
  if (other == [OWSSignalServiceProtosDataMessage defaultInstance]) {
    return self;
  }
  if (other.hasBody) {
    [self setBody:other.body];
  }
  if (other.attachmentsArray.count > 0) {
    if (resultDataMessage.attachmentsArray == nil) {
      resultDataMessage.attachmentsArray = [[NSMutableArray alloc] initWithArray:other.attachmentsArray];
    } else {
      [resultDataMessage.attachmentsArray addObjectsFromArray:other.attachmentsArray];
    }
  }
  if (other.hasGroup) {
    [self mergeGroup:other.group];
  }
  if (other.hasFlags) {
    [self setFlags:other.flags];
  }
  if (other.hasExpireTimer) {
    [self setExpireTimer:other.expireTimer];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosDataMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setBody:[input readString]];
        break;
      }
      case 18: {
        OWSSignalServiceProtosAttachmentPointerBuilder* subBuilder = [OWSSignalServiceProtosAttachmentPointer builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addAttachments:[subBuilder buildPartial]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosGroupContextBuilder* subBuilder = [OWSSignalServiceProtosGroupContext builder];
        if (self.hasGroup) {
          [subBuilder mergeFrom:self.group];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setGroup:[subBuilder buildPartial]];
        break;
      }
      case 32: {
        [self setFlags:[input readUInt32]];
        break;
      }
      case 40: {
        [self setExpireTimer:[input readUInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasBody {
  return resultDataMessage.hasBody;
}
- (NSString*) body {
  return resultDataMessage.body;
}
- (OWSSignalServiceProtosDataMessageBuilder*) setBody:(NSString*) value {
  resultDataMessage.hasBody = YES;
  resultDataMessage.body = value;
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clearBody {
  resultDataMessage.hasBody = NO;
  resultDataMessage.body = @"";
  return self;
}
- (NSMutableArray<OWSSignalServiceProtosAttachmentPointer*> *)attachments {
  return resultDataMessage.attachmentsArray;
}
- (OWSSignalServiceProtosAttachmentPointer*)attachmentsAtIndex:(NSUInteger)index {
  return [resultDataMessage attachmentsAtIndex:index];
}
- (OWSSignalServiceProtosDataMessageBuilder *)addAttachments:(OWSSignalServiceProtosAttachmentPointer*)value {
  if (resultDataMessage.attachmentsArray == nil) {
    resultDataMessage.attachmentsArray = [[NSMutableArray alloc]init];
  }
  [resultDataMessage.attachmentsArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder *)setAttachmentsArray:(NSArray<OWSSignalServiceProtosAttachmentPointer*> *)array {
  resultDataMessage.attachmentsArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder *)clearAttachments {
  resultDataMessage.attachmentsArray = nil;
  return self;
}
- (BOOL) hasGroup {
  return resultDataMessage.hasGroup;
}
- (OWSSignalServiceProtosGroupContext*) group {
  return resultDataMessage.group;
}
- (OWSSignalServiceProtosDataMessageBuilder*) setGroup:(OWSSignalServiceProtosGroupContext*) value {
  resultDataMessage.hasGroup = YES;
  resultDataMessage.group = value;
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) setGroupBuilder:(OWSSignalServiceProtosGroupContextBuilder*) builderForValue {
  return [self setGroup:[builderForValue build]];
}
- (OWSSignalServiceProtosDataMessageBuilder*) mergeGroup:(OWSSignalServiceProtosGroupContext*) value {
  if (resultDataMessage.hasGroup &&
      resultDataMessage.group != [OWSSignalServiceProtosGroupContext defaultInstance]) {
    resultDataMessage.group =
      [[[OWSSignalServiceProtosGroupContext builderWithPrototype:resultDataMessage.group] mergeFrom:value] buildPartial];
  } else {
    resultDataMessage.group = value;
  }
  resultDataMessage.hasGroup = YES;
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clearGroup {
  resultDataMessage.hasGroup = NO;
  resultDataMessage.group = [OWSSignalServiceProtosGroupContext defaultInstance];
  return self;
}
- (BOOL) hasFlags {
  return resultDataMessage.hasFlags;
}
- (UInt32) flags {
  return resultDataMessage.flags;
}
- (OWSSignalServiceProtosDataMessageBuilder*) setFlags:(UInt32) value {
  resultDataMessage.hasFlags = YES;
  resultDataMessage.flags = value;
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clearFlags {
  resultDataMessage.hasFlags = NO;
  resultDataMessage.flags = 0;
  return self;
}
- (BOOL) hasExpireTimer {
  return resultDataMessage.hasExpireTimer;
}
- (UInt32) expireTimer {
  return resultDataMessage.expireTimer;
}
- (OWSSignalServiceProtosDataMessageBuilder*) setExpireTimer:(UInt32) value {
  resultDataMessage.hasExpireTimer = YES;
  resultDataMessage.expireTimer = value;
  return self;
}
- (OWSSignalServiceProtosDataMessageBuilder*) clearExpireTimer {
  resultDataMessage.hasExpireTimer = NO;
  resultDataMessage.expireTimer = 0;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessage ()
@property (strong) OWSSignalServiceProtosSyncMessageSent* sent;
@property (strong) OWSSignalServiceProtosSyncMessageContacts* contacts;
@property (strong) OWSSignalServiceProtosSyncMessageGroups* groups;
@property (strong) OWSSignalServiceProtosSyncMessageRequest* request;
@property (strong) NSMutableArray<OWSSignalServiceProtosSyncMessageRead*> * readArray;
@property (strong) OWSSignalServiceProtosSyncMessageBlocked* blocked;
@end

@implementation OWSSignalServiceProtosSyncMessage

- (BOOL) hasSent {
  return !!hasSent_;
}
- (void) setHasSent:(BOOL) _value_ {
  hasSent_ = !!_value_;
}
@synthesize sent;
- (BOOL) hasContacts {
  return !!hasContacts_;
}
- (void) setHasContacts:(BOOL) _value_ {
  hasContacts_ = !!_value_;
}
@synthesize contacts;
- (BOOL) hasGroups {
  return !!hasGroups_;
}
- (void) setHasGroups:(BOOL) _value_ {
  hasGroups_ = !!_value_;
}
@synthesize groups;
- (BOOL) hasRequest {
  return !!hasRequest_;
}
- (void) setHasRequest:(BOOL) _value_ {
  hasRequest_ = !!_value_;
}
@synthesize request;
@synthesize readArray;
@dynamic read;
- (BOOL) hasBlocked {
  return !!hasBlocked_;
}
- (void) setHasBlocked:(BOOL) _value_ {
  hasBlocked_ = !!_value_;
}
@synthesize blocked;
- (instancetype) init {
  if ((self = [super init])) {
    self.sent = [OWSSignalServiceProtosSyncMessageSent defaultInstance];
    self.contacts = [OWSSignalServiceProtosSyncMessageContacts defaultInstance];
    self.groups = [OWSSignalServiceProtosSyncMessageGroups defaultInstance];
    self.request = [OWSSignalServiceProtosSyncMessageRequest defaultInstance];
    self.blocked = [OWSSignalServiceProtosSyncMessageBlocked defaultInstance];
  }
  return self;
}
static OWSSignalServiceProtosSyncMessage* defaultOWSSignalServiceProtosSyncMessageInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessage class]) {
    defaultOWSSignalServiceProtosSyncMessageInstance = [[OWSSignalServiceProtosSyncMessage alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageInstance;
}
- (NSArray<OWSSignalServiceProtosSyncMessageRead*> *)read {
  return readArray;
}
- (OWSSignalServiceProtosSyncMessageRead*)readAtIndex:(NSUInteger)index {
  return [readArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasSent) {
    [output writeMessage:1 value:self.sent];
  }
  if (self.hasContacts) {
    [output writeMessage:2 value:self.contacts];
  }
  if (self.hasGroups) {
    [output writeMessage:3 value:self.groups];
  }
  if (self.hasRequest) {
    [output writeMessage:4 value:self.request];
  }
  [self.readArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosSyncMessageRead *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:5 value:element];
  }];
  if (self.hasBlocked) {
    [output writeMessage:6 value:self.blocked];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasSent) {
    size_ += computeMessageSize(1, self.sent);
  }
  if (self.hasContacts) {
    size_ += computeMessageSize(2, self.contacts);
  }
  if (self.hasGroups) {
    size_ += computeMessageSize(3, self.groups);
  }
  if (self.hasRequest) {
    size_ += computeMessageSize(4, self.request);
  }
  [self.readArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosSyncMessageRead *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(5, element);
  }];
  if (self.hasBlocked) {
    size_ += computeMessageSize(6, self.blocked);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessage*)[[[OWSSignalServiceProtosSyncMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessage*) prototype {
  return [[OWSSignalServiceProtosSyncMessage builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessage builder];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasSent) {
    [output appendFormat:@"%@%@ {\n", indent, @"sent"];
    [self.sent writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasContacts) {
    [output appendFormat:@"%@%@ {\n", indent, @"contacts"];
    [self.contacts writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasGroups) {
    [output appendFormat:@"%@%@ {\n", indent, @"groups"];
    [self.groups writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasRequest) {
    [output appendFormat:@"%@%@ {\n", indent, @"request"];
    [self.request writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.readArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosSyncMessageRead *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"read"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  if (self.hasBlocked) {
    [output appendFormat:@"%@%@ {\n", indent, @"blocked"];
    [self.blocked writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasSent) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.sent storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"sent"];
  }
  if (self.hasContacts) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.contacts storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"contacts"];
  }
  if (self.hasGroups) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.groups storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"groups"];
  }
  if (self.hasRequest) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.request storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"request"];
  }
  for (OWSSignalServiceProtosSyncMessageRead* element in self.readArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"read"];
  }
  if (self.hasBlocked) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.blocked storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"blocked"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessage class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessage *otherMessage = other;
  return
      self.hasSent == otherMessage.hasSent &&
      (!self.hasSent || [self.sent isEqual:otherMessage.sent]) &&
      self.hasContacts == otherMessage.hasContacts &&
      (!self.hasContacts || [self.contacts isEqual:otherMessage.contacts]) &&
      self.hasGroups == otherMessage.hasGroups &&
      (!self.hasGroups || [self.groups isEqual:otherMessage.groups]) &&
      self.hasRequest == otherMessage.hasRequest &&
      (!self.hasRequest || [self.request isEqual:otherMessage.request]) &&
      [self.readArray isEqualToArray:otherMessage.readArray] &&
      self.hasBlocked == otherMessage.hasBlocked &&
      (!self.hasBlocked || [self.blocked isEqual:otherMessage.blocked]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasSent) {
    hashCode = hashCode * 31 + [self.sent hash];
  }
  if (self.hasContacts) {
    hashCode = hashCode * 31 + [self.contacts hash];
  }
  if (self.hasGroups) {
    hashCode = hashCode * 31 + [self.groups hash];
  }
  if (self.hasRequest) {
    hashCode = hashCode * 31 + [self.request hash];
  }
  [self.readArray enumerateObjectsUsingBlock:^(OWSSignalServiceProtosSyncMessageRead *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasBlocked) {
    hashCode = hashCode * 31 + [self.blocked hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageSent ()
@property (strong) NSString* destination;
@property UInt64 timestamp;
@property (strong) OWSSignalServiceProtosDataMessage* message;
@property UInt64 expirationStartTimestamp;
@end

@implementation OWSSignalServiceProtosSyncMessageSent

- (BOOL) hasDestination {
  return !!hasDestination_;
}
- (void) setHasDestination:(BOOL) _value_ {
  hasDestination_ = !!_value_;
}
@synthesize destination;
- (BOOL) hasTimestamp {
  return !!hasTimestamp_;
}
- (void) setHasTimestamp:(BOOL) _value_ {
  hasTimestamp_ = !!_value_;
}
@synthesize timestamp;
- (BOOL) hasMessage {
  return !!hasMessage_;
}
- (void) setHasMessage:(BOOL) _value_ {
  hasMessage_ = !!_value_;
}
@synthesize message;
- (BOOL) hasExpirationStartTimestamp {
  return !!hasExpirationStartTimestamp_;
}
- (void) setHasExpirationStartTimestamp:(BOOL) _value_ {
  hasExpirationStartTimestamp_ = !!_value_;
}
@synthesize expirationStartTimestamp;
- (instancetype) init {
  if ((self = [super init])) {
    self.destination = @"";
    self.timestamp = 0L;
    self.message = [OWSSignalServiceProtosDataMessage defaultInstance];
    self.expirationStartTimestamp = 0L;
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageSent* defaultOWSSignalServiceProtosSyncMessageSentInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageSent class]) {
    defaultOWSSignalServiceProtosSyncMessageSentInstance = [[OWSSignalServiceProtosSyncMessageSent alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageSentInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageSentInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasDestination) {
    [output writeString:1 value:self.destination];
  }
  if (self.hasTimestamp) {
    [output writeUInt64:2 value:self.timestamp];
  }
  if (self.hasMessage) {
    [output writeMessage:3 value:self.message];
  }
  if (self.hasExpirationStartTimestamp) {
    [output writeUInt64:4 value:self.expirationStartTimestamp];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasDestination) {
    size_ += computeStringSize(1, self.destination);
  }
  if (self.hasTimestamp) {
    size_ += computeUInt64Size(2, self.timestamp);
  }
  if (self.hasMessage) {
    size_ += computeMessageSize(3, self.message);
  }
  if (self.hasExpirationStartTimestamp) {
    size_ += computeUInt64Size(4, self.expirationStartTimestamp);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageSent*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageSent*)[[[OWSSignalServiceProtosSyncMessageSent builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageSentBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageSentBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageSentBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageSent*) prototype {
  return [[OWSSignalServiceProtosSyncMessageSent builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageSent builder];
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageSent builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasDestination) {
    [output appendFormat:@"%@%@: %@\n", indent, @"destination", self.destination];
  }
  if (self.hasTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"timestamp", [NSNumber numberWithLongLong:self.timestamp]];
  }
  if (self.hasMessage) {
    [output appendFormat:@"%@%@ {\n", indent, @"message"];
    [self.message writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasExpirationStartTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"expirationStartTimestamp", [NSNumber numberWithLongLong:self.expirationStartTimestamp]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasDestination) {
    [dictionary setObject: self.destination forKey: @"destination"];
  }
  if (self.hasTimestamp) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.timestamp] forKey: @"timestamp"];
  }
  if (self.hasMessage) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.message storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"message"];
  }
  if (self.hasExpirationStartTimestamp) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.expirationStartTimestamp] forKey: @"expirationStartTimestamp"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageSent class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageSent *otherMessage = other;
  return
      self.hasDestination == otherMessage.hasDestination &&
      (!self.hasDestination || [self.destination isEqual:otherMessage.destination]) &&
      self.hasTimestamp == otherMessage.hasTimestamp &&
      (!self.hasTimestamp || self.timestamp == otherMessage.timestamp) &&
      self.hasMessage == otherMessage.hasMessage &&
      (!self.hasMessage || [self.message isEqual:otherMessage.message]) &&
      self.hasExpirationStartTimestamp == otherMessage.hasExpirationStartTimestamp &&
      (!self.hasExpirationStartTimestamp || self.expirationStartTimestamp == otherMessage.expirationStartTimestamp) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasDestination) {
    hashCode = hashCode * 31 + [self.destination hash];
  }
  if (self.hasTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.timestamp] hash];
  }
  if (self.hasMessage) {
    hashCode = hashCode * 31 + [self.message hash];
  }
  if (self.hasExpirationStartTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.expirationStartTimestamp] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageSentBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageSent* resultSent;
@end

@implementation OWSSignalServiceProtosSyncMessageSentBuilder
@synthesize resultSent;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultSent = [[OWSSignalServiceProtosSyncMessageSent alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultSent;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clear {
  self.resultSent = [[OWSSignalServiceProtosSyncMessageSent alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageSent builderWithPrototype:resultSent];
}
- (OWSSignalServiceProtosSyncMessageSent*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageSent defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageSent*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageSent*) buildPartial {
  OWSSignalServiceProtosSyncMessageSent* returnMe = resultSent;
  self.resultSent = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageSent*) other {
  if (other == [OWSSignalServiceProtosSyncMessageSent defaultInstance]) {
    return self;
  }
  if (other.hasDestination) {
    [self setDestination:other.destination];
  }
  if (other.hasTimestamp) {
    [self setTimestamp:other.timestamp];
  }
  if (other.hasMessage) {
    [self mergeMessage:other.message];
  }
  if (other.hasExpirationStartTimestamp) {
    [self setExpirationStartTimestamp:other.expirationStartTimestamp];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setDestination:[input readString]];
        break;
      }
      case 16: {
        [self setTimestamp:[input readUInt64]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosDataMessageBuilder* subBuilder = [OWSSignalServiceProtosDataMessage builder];
        if (self.hasMessage) {
          [subBuilder mergeFrom:self.message];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setMessage:[subBuilder buildPartial]];
        break;
      }
      case 32: {
        [self setExpirationStartTimestamp:[input readUInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasDestination {
  return resultSent.hasDestination;
}
- (NSString*) destination {
  return resultSent.destination;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) setDestination:(NSString*) value {
  resultSent.hasDestination = YES;
  resultSent.destination = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clearDestination {
  resultSent.hasDestination = NO;
  resultSent.destination = @"";
  return self;
}
- (BOOL) hasTimestamp {
  return resultSent.hasTimestamp;
}
- (UInt64) timestamp {
  return resultSent.timestamp;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) setTimestamp:(UInt64) value {
  resultSent.hasTimestamp = YES;
  resultSent.timestamp = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clearTimestamp {
  resultSent.hasTimestamp = NO;
  resultSent.timestamp = 0L;
  return self;
}
- (BOOL) hasMessage {
  return resultSent.hasMessage;
}
- (OWSSignalServiceProtosDataMessage*) message {
  return resultSent.message;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) setMessage:(OWSSignalServiceProtosDataMessage*) value {
  resultSent.hasMessage = YES;
  resultSent.message = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) setMessageBuilder:(OWSSignalServiceProtosDataMessageBuilder*) builderForValue {
  return [self setMessage:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) mergeMessage:(OWSSignalServiceProtosDataMessage*) value {
  if (resultSent.hasMessage &&
      resultSent.message != [OWSSignalServiceProtosDataMessage defaultInstance]) {
    resultSent.message =
      [[[OWSSignalServiceProtosDataMessage builderWithPrototype:resultSent.message] mergeFrom:value] buildPartial];
  } else {
    resultSent.message = value;
  }
  resultSent.hasMessage = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clearMessage {
  resultSent.hasMessage = NO;
  resultSent.message = [OWSSignalServiceProtosDataMessage defaultInstance];
  return self;
}
- (BOOL) hasExpirationStartTimestamp {
  return resultSent.hasExpirationStartTimestamp;
}
- (UInt64) expirationStartTimestamp {
  return resultSent.expirationStartTimestamp;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) setExpirationStartTimestamp:(UInt64) value {
  resultSent.hasExpirationStartTimestamp = YES;
  resultSent.expirationStartTimestamp = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageSentBuilder*) clearExpirationStartTimestamp {
  resultSent.hasExpirationStartTimestamp = NO;
  resultSent.expirationStartTimestamp = 0L;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageContacts ()
@property (strong) OWSSignalServiceProtosAttachmentPointer* blob;
@property BOOL isComplete;
@end

@implementation OWSSignalServiceProtosSyncMessageContacts

- (BOOL) hasBlob {
  return !!hasBlob_;
}
- (void) setHasBlob:(BOOL) _value_ {
  hasBlob_ = !!_value_;
}
@synthesize blob;
- (BOOL) hasIsComplete {
  return !!hasIsComplete_;
}
- (void) setHasIsComplete:(BOOL) _value_ {
  hasIsComplete_ = !!_value_;
}
- (BOOL) isComplete {
  return !!isComplete_;
}
- (void) setIsComplete:(BOOL) _value_ {
  isComplete_ = !!_value_;
}
- (instancetype) init {
  if ((self = [super init])) {
    self.blob = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
    self.isComplete = NO;
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageContacts* defaultOWSSignalServiceProtosSyncMessageContactsInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageContacts class]) {
    defaultOWSSignalServiceProtosSyncMessageContactsInstance = [[OWSSignalServiceProtosSyncMessageContacts alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageContactsInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageContactsInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasBlob) {
    [output writeMessage:1 value:self.blob];
  }
  if (self.hasIsComplete) {
    [output writeBool:2 value:self.isComplete];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasBlob) {
    size_ += computeMessageSize(1, self.blob);
  }
  if (self.hasIsComplete) {
    size_ += computeBoolSize(2, self.isComplete);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageContacts*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageContacts*)[[[OWSSignalServiceProtosSyncMessageContacts builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageContactsBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageContactsBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageContactsBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageContacts*) prototype {
  return [[OWSSignalServiceProtosSyncMessageContacts builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageContacts builder];
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageContacts builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasBlob) {
    [output appendFormat:@"%@%@ {\n", indent, @"blob"];
    [self.blob writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasIsComplete) {
    [output appendFormat:@"%@%@: %@\n", indent, @"isComplete", [NSNumber numberWithBool:self.isComplete]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasBlob) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.blob storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"blob"];
  }
  if (self.hasIsComplete) {
    [dictionary setObject: [NSNumber numberWithBool:self.isComplete] forKey: @"isComplete"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageContacts class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageContacts *otherMessage = other;
  return
      self.hasBlob == otherMessage.hasBlob &&
      (!self.hasBlob || [self.blob isEqual:otherMessage.blob]) &&
      self.hasIsComplete == otherMessage.hasIsComplete &&
      (!self.hasIsComplete || self.isComplete == otherMessage.isComplete) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasBlob) {
    hashCode = hashCode * 31 + [self.blob hash];
  }
  if (self.hasIsComplete) {
    hashCode = hashCode * 31 + [[NSNumber numberWithBool:self.isComplete] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageContactsBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageContacts* resultContacts;
@end

@implementation OWSSignalServiceProtosSyncMessageContactsBuilder
@synthesize resultContacts;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultContacts = [[OWSSignalServiceProtosSyncMessageContacts alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultContacts;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) clear {
  self.resultContacts = [[OWSSignalServiceProtosSyncMessageContacts alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageContacts builderWithPrototype:resultContacts];
}
- (OWSSignalServiceProtosSyncMessageContacts*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageContacts defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageContacts*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageContacts*) buildPartial {
  OWSSignalServiceProtosSyncMessageContacts* returnMe = resultContacts;
  self.resultContacts = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageContacts*) other {
  if (other == [OWSSignalServiceProtosSyncMessageContacts defaultInstance]) {
    return self;
  }
  if (other.hasBlob) {
    [self mergeBlob:other.blob];
  }
  if (other.hasIsComplete) {
    [self setIsComplete:other.isComplete];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        OWSSignalServiceProtosAttachmentPointerBuilder* subBuilder = [OWSSignalServiceProtosAttachmentPointer builder];
        if (self.hasBlob) {
          [subBuilder mergeFrom:self.blob];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setBlob:[subBuilder buildPartial]];
        break;
      }
      case 16: {
        [self setIsComplete:[input readBool]];
        break;
      }
    }
  }
}
- (BOOL) hasBlob {
  return resultContacts.hasBlob;
}
- (OWSSignalServiceProtosAttachmentPointer*) blob {
  return resultContacts.blob;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) setBlob:(OWSSignalServiceProtosAttachmentPointer*) value {
  resultContacts.hasBlob = YES;
  resultContacts.blob = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) setBlobBuilder:(OWSSignalServiceProtosAttachmentPointerBuilder*) builderForValue {
  return [self setBlob:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) mergeBlob:(OWSSignalServiceProtosAttachmentPointer*) value {
  if (resultContacts.hasBlob &&
      resultContacts.blob != [OWSSignalServiceProtosAttachmentPointer defaultInstance]) {
    resultContacts.blob =
      [[[OWSSignalServiceProtosAttachmentPointer builderWithPrototype:resultContacts.blob] mergeFrom:value] buildPartial];
  } else {
    resultContacts.blob = value;
  }
  resultContacts.hasBlob = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) clearBlob {
  resultContacts.hasBlob = NO;
  resultContacts.blob = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
  return self;
}
- (BOOL) hasIsComplete {
  return resultContacts.hasIsComplete;
}
- (BOOL) isComplete {
  return resultContacts.isComplete;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) setIsComplete:(BOOL) value {
  resultContacts.hasIsComplete = YES;
  resultContacts.isComplete = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageContactsBuilder*) clearIsComplete {
  resultContacts.hasIsComplete = NO;
  resultContacts.isComplete = NO;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageGroups ()
@property (strong) OWSSignalServiceProtosAttachmentPointer* blob;
@end

@implementation OWSSignalServiceProtosSyncMessageGroups

- (BOOL) hasBlob {
  return !!hasBlob_;
}
- (void) setHasBlob:(BOOL) _value_ {
  hasBlob_ = !!_value_;
}
@synthesize blob;
- (instancetype) init {
  if ((self = [super init])) {
    self.blob = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageGroups* defaultOWSSignalServiceProtosSyncMessageGroupsInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageGroups class]) {
    defaultOWSSignalServiceProtosSyncMessageGroupsInstance = [[OWSSignalServiceProtosSyncMessageGroups alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageGroupsInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageGroupsInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasBlob) {
    [output writeMessage:1 value:self.blob];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasBlob) {
    size_ += computeMessageSize(1, self.blob);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageGroups*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageGroups*)[[[OWSSignalServiceProtosSyncMessageGroups builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageGroupsBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageGroupsBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageGroupsBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageGroups*) prototype {
  return [[OWSSignalServiceProtosSyncMessageGroups builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageGroups builder];
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageGroups builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasBlob) {
    [output appendFormat:@"%@%@ {\n", indent, @"blob"];
    [self.blob writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasBlob) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.blob storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"blob"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageGroups class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageGroups *otherMessage = other;
  return
      self.hasBlob == otherMessage.hasBlob &&
      (!self.hasBlob || [self.blob isEqual:otherMessage.blob]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasBlob) {
    hashCode = hashCode * 31 + [self.blob hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageGroupsBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageGroups* resultGroups;
@end

@implementation OWSSignalServiceProtosSyncMessageGroupsBuilder
@synthesize resultGroups;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultGroups = [[OWSSignalServiceProtosSyncMessageGroups alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultGroups;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) clear {
  self.resultGroups = [[OWSSignalServiceProtosSyncMessageGroups alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageGroups builderWithPrototype:resultGroups];
}
- (OWSSignalServiceProtosSyncMessageGroups*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageGroups defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageGroups*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageGroups*) buildPartial {
  OWSSignalServiceProtosSyncMessageGroups* returnMe = resultGroups;
  self.resultGroups = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageGroups*) other {
  if (other == [OWSSignalServiceProtosSyncMessageGroups defaultInstance]) {
    return self;
  }
  if (other.hasBlob) {
    [self mergeBlob:other.blob];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        OWSSignalServiceProtosAttachmentPointerBuilder* subBuilder = [OWSSignalServiceProtosAttachmentPointer builder];
        if (self.hasBlob) {
          [subBuilder mergeFrom:self.blob];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setBlob:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasBlob {
  return resultGroups.hasBlob;
}
- (OWSSignalServiceProtosAttachmentPointer*) blob {
  return resultGroups.blob;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) setBlob:(OWSSignalServiceProtosAttachmentPointer*) value {
  resultGroups.hasBlob = YES;
  resultGroups.blob = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) setBlobBuilder:(OWSSignalServiceProtosAttachmentPointerBuilder*) builderForValue {
  return [self setBlob:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) mergeBlob:(OWSSignalServiceProtosAttachmentPointer*) value {
  if (resultGroups.hasBlob &&
      resultGroups.blob != [OWSSignalServiceProtosAttachmentPointer defaultInstance]) {
    resultGroups.blob =
      [[[OWSSignalServiceProtosAttachmentPointer builderWithPrototype:resultGroups.blob] mergeFrom:value] buildPartial];
  } else {
    resultGroups.blob = value;
  }
  resultGroups.hasBlob = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageGroupsBuilder*) clearBlob {
  resultGroups.hasBlob = NO;
  resultGroups.blob = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageBlocked ()
@property (strong) NSMutableArray * numbersArray;
@end

@implementation OWSSignalServiceProtosSyncMessageBlocked

@synthesize numbersArray;
@dynamic numbers;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageBlocked* defaultOWSSignalServiceProtosSyncMessageBlockedInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageBlocked class]) {
    defaultOWSSignalServiceProtosSyncMessageBlockedInstance = [[OWSSignalServiceProtosSyncMessageBlocked alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageBlockedInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageBlockedInstance;
}
- (NSArray *)numbers {
  return numbersArray;
}
- (NSString*)numbersAtIndex:(NSUInteger)index {
  return [numbersArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.numbersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    [output writeString:1 value:element];
  }];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  {
    __block SInt32 dataSize = 0;
    const NSUInteger count = self.numbersArray.count;
    [self.numbersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
      dataSize += computeStringSizeNoTag(element);
    }];
    size_ += dataSize;
    size_ += (SInt32)(1 * count);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageBlocked*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageBlocked*)[[[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageBlockedBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageBlockedBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageBlockedBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageBlocked*) prototype {
  return [[OWSSignalServiceProtosSyncMessageBlocked builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageBlocked builder];
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageBlocked builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.numbersArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@: %@\n", indent, @"numbers", obj];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  [dictionary setObject:self.numbers forKey: @"numbers"];
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageBlocked class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageBlocked *otherMessage = other;
  return
      [self.numbersArray isEqualToArray:otherMessage.numbersArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.numbersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageBlockedBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageBlocked* resultBlocked;
@end

@implementation OWSSignalServiceProtosSyncMessageBlockedBuilder
@synthesize resultBlocked;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultBlocked = [[OWSSignalServiceProtosSyncMessageBlocked alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultBlocked;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) clear {
  self.resultBlocked = [[OWSSignalServiceProtosSyncMessageBlocked alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageBlocked builderWithPrototype:resultBlocked];
}
- (OWSSignalServiceProtosSyncMessageBlocked*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageBlocked defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageBlocked*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageBlocked*) buildPartial {
  OWSSignalServiceProtosSyncMessageBlocked* returnMe = resultBlocked;
  self.resultBlocked = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageBlocked*) other {
  if (other == [OWSSignalServiceProtosSyncMessageBlocked defaultInstance]) {
    return self;
  }
  if (other.numbersArray.count > 0) {
    if (resultBlocked.numbersArray == nil) {
      resultBlocked.numbersArray = [[NSMutableArray alloc] initWithArray:other.numbersArray];
    } else {
      [resultBlocked.numbersArray addObjectsFromArray:other.numbersArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self addNumbers:[input readString]];
        break;
      }
    }
  }
}
- (NSMutableArray *)numbers {
  return resultBlocked.numbersArray;
}
- (NSString*)numbersAtIndex:(NSUInteger)index {
  return [resultBlocked numbersAtIndex:index];
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder *)addNumbers:(NSString*)value {
  if (resultBlocked.numbersArray == nil) {
    resultBlocked.numbersArray = [[NSMutableArray alloc]init];
  }
  [resultBlocked.numbersArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder *)setNumbersArray:(NSArray *)array {
  resultBlocked.numbersArray = [[NSMutableArray alloc] initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBlockedBuilder *)clearNumbers {
  resultBlocked.numbersArray = nil;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageRequest ()
@property OWSSignalServiceProtosSyncMessageRequestType type;
@end

@implementation OWSSignalServiceProtosSyncMessageRequest

- (BOOL) hasType {
  return !!hasType_;
}
- (void) setHasType:(BOOL) _value_ {
  hasType_ = !!_value_;
}
@synthesize type;
- (instancetype) init {
  if ((self = [super init])) {
    self.type = OWSSignalServiceProtosSyncMessageRequestTypeUnknown;
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageRequest* defaultOWSSignalServiceProtosSyncMessageRequestInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageRequest class]) {
    defaultOWSSignalServiceProtosSyncMessageRequestInstance = [[OWSSignalServiceProtosSyncMessageRequest alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageRequestInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageRequestInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasType) {
    [output writeEnum:1 value:self.type];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasType) {
    size_ += computeEnumSize(1, self.type);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageRequest*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRequest*)[[[OWSSignalServiceProtosSyncMessageRequest builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageRequestBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageRequestBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageRequestBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageRequest*) prototype {
  return [[OWSSignalServiceProtosSyncMessageRequest builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageRequest builder];
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageRequest builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"type", NSStringFromOWSSignalServiceProtosSyncMessageRequestType(self.type)];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasType) {
    [dictionary setObject: @(self.type) forKey: @"type"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageRequest class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageRequest *otherMessage = other;
  return
      self.hasType == otherMessage.hasType &&
      (!self.hasType || self.type == otherMessage.type) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasType) {
    hashCode = hashCode * 31 + self.type;
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL OWSSignalServiceProtosSyncMessageRequestTypeIsValidValue(OWSSignalServiceProtosSyncMessageRequestType value) {
  switch (value) {
    case OWSSignalServiceProtosSyncMessageRequestTypeUnknown:
    case OWSSignalServiceProtosSyncMessageRequestTypeContacts:
    case OWSSignalServiceProtosSyncMessageRequestTypeGroups:
    case OWSSignalServiceProtosSyncMessageRequestTypeBlocked:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromOWSSignalServiceProtosSyncMessageRequestType(OWSSignalServiceProtosSyncMessageRequestType value) {
  switch (value) {
    case OWSSignalServiceProtosSyncMessageRequestTypeUnknown:
      return @"OWSSignalServiceProtosSyncMessageRequestTypeUnknown";
    case OWSSignalServiceProtosSyncMessageRequestTypeContacts:
      return @"OWSSignalServiceProtosSyncMessageRequestTypeContacts";
    case OWSSignalServiceProtosSyncMessageRequestTypeGroups:
      return @"OWSSignalServiceProtosSyncMessageRequestTypeGroups";
    case OWSSignalServiceProtosSyncMessageRequestTypeBlocked:
      return @"OWSSignalServiceProtosSyncMessageRequestTypeBlocked";
    default:
      return nil;
  }
}

@interface OWSSignalServiceProtosSyncMessageRequestBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageRequest* resultRequest;
@end

@implementation OWSSignalServiceProtosSyncMessageRequestBuilder
@synthesize resultRequest;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultRequest = [[OWSSignalServiceProtosSyncMessageRequest alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultRequest;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) clear {
  self.resultRequest = [[OWSSignalServiceProtosSyncMessageRequest alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageRequest builderWithPrototype:resultRequest];
}
- (OWSSignalServiceProtosSyncMessageRequest*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageRequest defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageRequest*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageRequest*) buildPartial {
  OWSSignalServiceProtosSyncMessageRequest* returnMe = resultRequest;
  self.resultRequest = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageRequest*) other {
  if (other == [OWSSignalServiceProtosSyncMessageRequest defaultInstance]) {
    return self;
  }
  if (other.hasType) {
    [self setType:other.type];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        OWSSignalServiceProtosSyncMessageRequestType value = (OWSSignalServiceProtosSyncMessageRequestType)[input readEnum];
        if (OWSSignalServiceProtosSyncMessageRequestTypeIsValidValue(value)) {
          [self setType:value];
        } else {
          [unknownFields mergeVarintField:1 value:value];
        }
        break;
      }
    }
  }
}
- (BOOL) hasType {
  return resultRequest.hasType;
}
- (OWSSignalServiceProtosSyncMessageRequestType) type {
  return resultRequest.type;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) setType:(OWSSignalServiceProtosSyncMessageRequestType) value {
  resultRequest.hasType = YES;
  resultRequest.type = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageRequestBuilder*) clearType {
  resultRequest.hasType = NO;
  resultRequest.type = OWSSignalServiceProtosSyncMessageRequestTypeUnknown;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageRead ()
@property (strong) NSString* sender;
@property UInt64 timestamp;
@end

@implementation OWSSignalServiceProtosSyncMessageRead

- (BOOL) hasSender {
  return !!hasSender_;
}
- (void) setHasSender:(BOOL) _value_ {
  hasSender_ = !!_value_;
}
@synthesize sender;
- (BOOL) hasTimestamp {
  return !!hasTimestamp_;
}
- (void) setHasTimestamp:(BOOL) _value_ {
  hasTimestamp_ = !!_value_;
}
@synthesize timestamp;
- (instancetype) init {
  if ((self = [super init])) {
    self.sender = @"";
    self.timestamp = 0L;
  }
  return self;
}
static OWSSignalServiceProtosSyncMessageRead* defaultOWSSignalServiceProtosSyncMessageReadInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosSyncMessageRead class]) {
    defaultOWSSignalServiceProtosSyncMessageReadInstance = [[OWSSignalServiceProtosSyncMessageRead alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageReadInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosSyncMessageReadInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasSender) {
    [output writeString:1 value:self.sender];
  }
  if (self.hasTimestamp) {
    [output writeUInt64:2 value:self.timestamp];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasSender) {
    size_ += computeStringSize(1, self.sender);
  }
  if (self.hasTimestamp) {
    size_ += computeUInt64Size(2, self.timestamp);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosSyncMessageRead*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosSyncMessageRead*)[[[OWSSignalServiceProtosSyncMessageRead builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosSyncMessageReadBuilder*) builder {
  return [[OWSSignalServiceProtosSyncMessageReadBuilder alloc] init];
}
+ (OWSSignalServiceProtosSyncMessageReadBuilder*) builderWithPrototype:(OWSSignalServiceProtosSyncMessageRead*) prototype {
  return [[OWSSignalServiceProtosSyncMessageRead builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) builder {
  return [OWSSignalServiceProtosSyncMessageRead builder];
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) toBuilder {
  return [OWSSignalServiceProtosSyncMessageRead builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasSender) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sender", self.sender];
  }
  if (self.hasTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"timestamp", [NSNumber numberWithLongLong:self.timestamp]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasSender) {
    [dictionary setObject: self.sender forKey: @"sender"];
  }
  if (self.hasTimestamp) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.timestamp] forKey: @"timestamp"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosSyncMessageRead class]]) {
    return NO;
  }
  OWSSignalServiceProtosSyncMessageRead *otherMessage = other;
  return
      self.hasSender == otherMessage.hasSender &&
      (!self.hasSender || [self.sender isEqual:otherMessage.sender]) &&
      self.hasTimestamp == otherMessage.hasTimestamp &&
      (!self.hasTimestamp || self.timestamp == otherMessage.timestamp) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasSender) {
    hashCode = hashCode * 31 + [self.sender hash];
  }
  if (self.hasTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.timestamp] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosSyncMessageReadBuilder()
@property (strong) OWSSignalServiceProtosSyncMessageRead* resultRead;
@end

@implementation OWSSignalServiceProtosSyncMessageReadBuilder
@synthesize resultRead;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultRead = [[OWSSignalServiceProtosSyncMessageRead alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultRead;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) clear {
  self.resultRead = [[OWSSignalServiceProtosSyncMessageRead alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessageRead builderWithPrototype:resultRead];
}
- (OWSSignalServiceProtosSyncMessageRead*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessageRead defaultInstance];
}
- (OWSSignalServiceProtosSyncMessageRead*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessageRead*) buildPartial {
  OWSSignalServiceProtosSyncMessageRead* returnMe = resultRead;
  self.resultRead = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessageRead*) other {
  if (other == [OWSSignalServiceProtosSyncMessageRead defaultInstance]) {
    return self;
  }
  if (other.hasSender) {
    [self setSender:other.sender];
  }
  if (other.hasTimestamp) {
    [self setTimestamp:other.timestamp];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setSender:[input readString]];
        break;
      }
      case 16: {
        [self setTimestamp:[input readUInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasSender {
  return resultRead.hasSender;
}
- (NSString*) sender {
  return resultRead.sender;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) setSender:(NSString*) value {
  resultRead.hasSender = YES;
  resultRead.sender = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) clearSender {
  resultRead.hasSender = NO;
  resultRead.sender = @"";
  return self;
}
- (BOOL) hasTimestamp {
  return resultRead.hasTimestamp;
}
- (UInt64) timestamp {
  return resultRead.timestamp;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) setTimestamp:(UInt64) value {
  resultRead.hasTimestamp = YES;
  resultRead.timestamp = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageReadBuilder*) clearTimestamp {
  resultRead.hasTimestamp = NO;
  resultRead.timestamp = 0L;
  return self;
}
@end

@interface OWSSignalServiceProtosSyncMessageBuilder()
@property (strong) OWSSignalServiceProtosSyncMessage* resultSyncMessage;
@end

@implementation OWSSignalServiceProtosSyncMessageBuilder
@synthesize resultSyncMessage;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultSyncMessage = [[OWSSignalServiceProtosSyncMessage alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultSyncMessage;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clear {
  self.resultSyncMessage = [[OWSSignalServiceProtosSyncMessage alloc] init];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clone {
  return [OWSSignalServiceProtosSyncMessage builderWithPrototype:resultSyncMessage];
}
- (OWSSignalServiceProtosSyncMessage*) defaultInstance {
  return [OWSSignalServiceProtosSyncMessage defaultInstance];
}
- (OWSSignalServiceProtosSyncMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosSyncMessage*) buildPartial {
  OWSSignalServiceProtosSyncMessage* returnMe = resultSyncMessage;
  self.resultSyncMessage = nil;
  return returnMe;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeFrom:(OWSSignalServiceProtosSyncMessage*) other {
  if (other == [OWSSignalServiceProtosSyncMessage defaultInstance]) {
    return self;
  }
  if (other.hasSent) {
    [self mergeSent:other.sent];
  }
  if (other.hasContacts) {
    [self mergeContacts:other.contacts];
  }
  if (other.hasGroups) {
    [self mergeGroups:other.groups];
  }
  if (other.hasRequest) {
    [self mergeRequest:other.request];
  }
  if (other.readArray.count > 0) {
    if (resultSyncMessage.readArray == nil) {
      resultSyncMessage.readArray = [[NSMutableArray alloc] initWithArray:other.readArray];
    } else {
      [resultSyncMessage.readArray addObjectsFromArray:other.readArray];
    }
  }
  if (other.hasBlocked) {
    [self mergeBlocked:other.blocked];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        OWSSignalServiceProtosSyncMessageSentBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageSent builder];
        if (self.hasSent) {
          [subBuilder mergeFrom:self.sent];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setSent:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        OWSSignalServiceProtosSyncMessageContactsBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageContacts builder];
        if (self.hasContacts) {
          [subBuilder mergeFrom:self.contacts];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setContacts:[subBuilder buildPartial]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosSyncMessageGroupsBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageGroups builder];
        if (self.hasGroups) {
          [subBuilder mergeFrom:self.groups];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setGroups:[subBuilder buildPartial]];
        break;
      }
      case 34: {
        OWSSignalServiceProtosSyncMessageRequestBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageRequest builder];
        if (self.hasRequest) {
          [subBuilder mergeFrom:self.request];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setRequest:[subBuilder buildPartial]];
        break;
      }
      case 42: {
        OWSSignalServiceProtosSyncMessageReadBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageRead builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addRead:[subBuilder buildPartial]];
        break;
      }
      case 50: {
        OWSSignalServiceProtosSyncMessageBlockedBuilder* subBuilder = [OWSSignalServiceProtosSyncMessageBlocked builder];
        if (self.hasBlocked) {
          [subBuilder mergeFrom:self.blocked];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setBlocked:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasSent {
  return resultSyncMessage.hasSent;
}
- (OWSSignalServiceProtosSyncMessageSent*) sent {
  return resultSyncMessage.sent;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setSent:(OWSSignalServiceProtosSyncMessageSent*) value {
  resultSyncMessage.hasSent = YES;
  resultSyncMessage.sent = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setSentBuilder:(OWSSignalServiceProtosSyncMessageSentBuilder*) builderForValue {
  return [self setSent:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeSent:(OWSSignalServiceProtosSyncMessageSent*) value {
  if (resultSyncMessage.hasSent &&
      resultSyncMessage.sent != [OWSSignalServiceProtosSyncMessageSent defaultInstance]) {
    resultSyncMessage.sent =
      [[[OWSSignalServiceProtosSyncMessageSent builderWithPrototype:resultSyncMessage.sent] mergeFrom:value] buildPartial];
  } else {
    resultSyncMessage.sent = value;
  }
  resultSyncMessage.hasSent = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clearSent {
  resultSyncMessage.hasSent = NO;
  resultSyncMessage.sent = [OWSSignalServiceProtosSyncMessageSent defaultInstance];
  return self;
}
- (BOOL) hasContacts {
  return resultSyncMessage.hasContacts;
}
- (OWSSignalServiceProtosSyncMessageContacts*) contacts {
  return resultSyncMessage.contacts;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setContacts:(OWSSignalServiceProtosSyncMessageContacts*) value {
  resultSyncMessage.hasContacts = YES;
  resultSyncMessage.contacts = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setContactsBuilder:(OWSSignalServiceProtosSyncMessageContactsBuilder*) builderForValue {
  return [self setContacts:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeContacts:(OWSSignalServiceProtosSyncMessageContacts*) value {
  if (resultSyncMessage.hasContacts &&
      resultSyncMessage.contacts != [OWSSignalServiceProtosSyncMessageContacts defaultInstance]) {
    resultSyncMessage.contacts =
      [[[OWSSignalServiceProtosSyncMessageContacts builderWithPrototype:resultSyncMessage.contacts] mergeFrom:value] buildPartial];
  } else {
    resultSyncMessage.contacts = value;
  }
  resultSyncMessage.hasContacts = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clearContacts {
  resultSyncMessage.hasContacts = NO;
  resultSyncMessage.contacts = [OWSSignalServiceProtosSyncMessageContacts defaultInstance];
  return self;
}
- (BOOL) hasGroups {
  return resultSyncMessage.hasGroups;
}
- (OWSSignalServiceProtosSyncMessageGroups*) groups {
  return resultSyncMessage.groups;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setGroups:(OWSSignalServiceProtosSyncMessageGroups*) value {
  resultSyncMessage.hasGroups = YES;
  resultSyncMessage.groups = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setGroupsBuilder:(OWSSignalServiceProtosSyncMessageGroupsBuilder*) builderForValue {
  return [self setGroups:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeGroups:(OWSSignalServiceProtosSyncMessageGroups*) value {
  if (resultSyncMessage.hasGroups &&
      resultSyncMessage.groups != [OWSSignalServiceProtosSyncMessageGroups defaultInstance]) {
    resultSyncMessage.groups =
      [[[OWSSignalServiceProtosSyncMessageGroups builderWithPrototype:resultSyncMessage.groups] mergeFrom:value] buildPartial];
  } else {
    resultSyncMessage.groups = value;
  }
  resultSyncMessage.hasGroups = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clearGroups {
  resultSyncMessage.hasGroups = NO;
  resultSyncMessage.groups = [OWSSignalServiceProtosSyncMessageGroups defaultInstance];
  return self;
}
- (BOOL) hasRequest {
  return resultSyncMessage.hasRequest;
}
- (OWSSignalServiceProtosSyncMessageRequest*) request {
  return resultSyncMessage.request;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setRequest:(OWSSignalServiceProtosSyncMessageRequest*) value {
  resultSyncMessage.hasRequest = YES;
  resultSyncMessage.request = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setRequestBuilder:(OWSSignalServiceProtosSyncMessageRequestBuilder*) builderForValue {
  return [self setRequest:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeRequest:(OWSSignalServiceProtosSyncMessageRequest*) value {
  if (resultSyncMessage.hasRequest &&
      resultSyncMessage.request != [OWSSignalServiceProtosSyncMessageRequest defaultInstance]) {
    resultSyncMessage.request =
      [[[OWSSignalServiceProtosSyncMessageRequest builderWithPrototype:resultSyncMessage.request] mergeFrom:value] buildPartial];
  } else {
    resultSyncMessage.request = value;
  }
  resultSyncMessage.hasRequest = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clearRequest {
  resultSyncMessage.hasRequest = NO;
  resultSyncMessage.request = [OWSSignalServiceProtosSyncMessageRequest defaultInstance];
  return self;
}
- (NSMutableArray<OWSSignalServiceProtosSyncMessageRead*> *)read {
  return resultSyncMessage.readArray;
}
- (OWSSignalServiceProtosSyncMessageRead*)readAtIndex:(NSUInteger)index {
  return [resultSyncMessage readAtIndex:index];
}
- (OWSSignalServiceProtosSyncMessageBuilder *)addRead:(OWSSignalServiceProtosSyncMessageRead*)value {
  if (resultSyncMessage.readArray == nil) {
    resultSyncMessage.readArray = [[NSMutableArray alloc]init];
  }
  [resultSyncMessage.readArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder *)setReadArray:(NSArray<OWSSignalServiceProtosSyncMessageRead*> *)array {
  resultSyncMessage.readArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder *)clearRead {
  resultSyncMessage.readArray = nil;
  return self;
}
- (BOOL) hasBlocked {
  return resultSyncMessage.hasBlocked;
}
- (OWSSignalServiceProtosSyncMessageBlocked*) blocked {
  return resultSyncMessage.blocked;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setBlocked:(OWSSignalServiceProtosSyncMessageBlocked*) value {
  resultSyncMessage.hasBlocked = YES;
  resultSyncMessage.blocked = value;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) setBlockedBuilder:(OWSSignalServiceProtosSyncMessageBlockedBuilder*) builderForValue {
  return [self setBlocked:[builderForValue build]];
}
- (OWSSignalServiceProtosSyncMessageBuilder*) mergeBlocked:(OWSSignalServiceProtosSyncMessageBlocked*) value {
  if (resultSyncMessage.hasBlocked &&
      resultSyncMessage.blocked != [OWSSignalServiceProtosSyncMessageBlocked defaultInstance]) {
    resultSyncMessage.blocked =
      [[[OWSSignalServiceProtosSyncMessageBlocked builderWithPrototype:resultSyncMessage.blocked] mergeFrom:value] buildPartial];
  } else {
    resultSyncMessage.blocked = value;
  }
  resultSyncMessage.hasBlocked = YES;
  return self;
}
- (OWSSignalServiceProtosSyncMessageBuilder*) clearBlocked {
  resultSyncMessage.hasBlocked = NO;
  resultSyncMessage.blocked = [OWSSignalServiceProtosSyncMessageBlocked defaultInstance];
  return self;
}
@end

@interface OWSSignalServiceProtosAttachmentPointer ()
@property UInt64 id;
@property (strong) NSString* contentType;
@property (strong) NSData* key;
@property UInt32 size;
@property (strong) NSData* thumbnail;
@property (strong) NSData* digest;
@property (strong) NSString* fileName;
@property UInt32 flags;
@end

@implementation OWSSignalServiceProtosAttachmentPointer

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasContentType {
  return !!hasContentType_;
}
- (void) setHasContentType:(BOOL) _value_ {
  hasContentType_ = !!_value_;
}
@synthesize contentType;
- (BOOL) hasKey {
  return !!hasKey_;
}
- (void) setHasKey:(BOOL) _value_ {
  hasKey_ = !!_value_;
}
@synthesize key;
- (BOOL) hasSize {
  return !!hasSize_;
}
- (void) setHasSize:(BOOL) _value_ {
  hasSize_ = !!_value_;
}
@synthesize size;
- (BOOL) hasThumbnail {
  return !!hasThumbnail_;
}
- (void) setHasThumbnail:(BOOL) _value_ {
  hasThumbnail_ = !!_value_;
}
@synthesize thumbnail;
- (BOOL) hasDigest {
  return !!hasDigest_;
}
- (void) setHasDigest:(BOOL) _value_ {
  hasDigest_ = !!_value_;
}
@synthesize digest;
- (BOOL) hasFileName {
  return !!hasFileName_;
}
- (void) setHasFileName:(BOOL) _value_ {
  hasFileName_ = !!_value_;
}
@synthesize fileName;
- (BOOL)hasFlags
{
    return !!hasFlags_;
}
- (void)setHasFlags:(BOOL)_value_
{
    hasFlags_ = !!_value_;
}
@synthesize flags;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.contentType = @"";
    self.key = [NSData data];
    self.size = 0;
    self.thumbnail = [NSData data];
    self.digest = [NSData data];
    self.fileName = @"";
    self.flags = 0;
  }
  return self;
}
static OWSSignalServiceProtosAttachmentPointer* defaultOWSSignalServiceProtosAttachmentPointerInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosAttachmentPointer class]) {
    defaultOWSSignalServiceProtosAttachmentPointerInstance = [[OWSSignalServiceProtosAttachmentPointer alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosAttachmentPointerInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosAttachmentPointerInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeFixed64:1 value:self.id];
  }
  if (self.hasContentType) {
    [output writeString:2 value:self.contentType];
  }
  if (self.hasKey) {
    [output writeData:3 value:self.key];
  }
  if (self.hasSize) {
    [output writeUInt32:4 value:self.size];
  }
  if (self.hasThumbnail) {
    [output writeData:5 value:self.thumbnail];
  }
  if (self.hasDigest) {
    [output writeData:6 value:self.digest];
  }
  if (self.hasFileName) {
    [output writeString:7 value:self.fileName];
  }
  if (self.hasFlags) {
      [output writeUInt32:8 value:self.flags];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeFixed64Size(1, self.id);
  }
  if (self.hasContentType) {
    size_ += computeStringSize(2, self.contentType);
  }
  if (self.hasKey) {
    size_ += computeDataSize(3, self.key);
  }
  if (self.hasSize) {
    size_ += computeUInt32Size(4, self.size);
  }
  if (self.hasThumbnail) {
    size_ += computeDataSize(5, self.thumbnail);
  }
  if (self.hasDigest) {
    size_ += computeDataSize(6, self.digest);
  }
  if (self.hasFileName) {
    size_ += computeStringSize(7, self.fileName);
  }
  if (self.hasFlags) {
      size_ += computeUInt32Size(8, self.flags);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosAttachmentPointer*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosAttachmentPointer*)[[[OWSSignalServiceProtosAttachmentPointer builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosAttachmentPointerBuilder*) builder {
  return [[OWSSignalServiceProtosAttachmentPointerBuilder alloc] init];
}
+ (OWSSignalServiceProtosAttachmentPointerBuilder*) builderWithPrototype:(OWSSignalServiceProtosAttachmentPointer*) prototype {
  return [[OWSSignalServiceProtosAttachmentPointer builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) builder {
  return [OWSSignalServiceProtosAttachmentPointer builder];
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) toBuilder {
  return [OWSSignalServiceProtosAttachmentPointer builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasContentType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"contentType", self.contentType];
  }
  if (self.hasKey) {
    [output appendFormat:@"%@%@: %@\n", indent, @"key", self.key];
  }
  if (self.hasSize) {
    [output appendFormat:@"%@%@: %@\n", indent, @"size", [NSNumber numberWithInteger:self.size]];
  }
  if (self.hasThumbnail) {
    [output appendFormat:@"%@%@: %@\n", indent, @"thumbnail", self.thumbnail];
  }
  if (self.hasDigest) {
    [output appendFormat:@"%@%@: %@\n", indent, @"digest", self.digest];
  }
  if (self.hasFileName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fileName", self.fileName];
  }
  if (self.hasFlags) {
      [output appendFormat:@"%@%@: %@\n", indent, @"flags", [NSNumber numberWithInteger:self.flags]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasContentType) {
    [dictionary setObject: self.contentType forKey: @"contentType"];
  }
  if (self.hasKey) {
    [dictionary setObject: self.key forKey: @"key"];
  }
  if (self.hasSize) {
    [dictionary setObject: [NSNumber numberWithInteger:self.size] forKey: @"size"];
  }
  if (self.hasThumbnail) {
    [dictionary setObject: self.thumbnail forKey: @"thumbnail"];
  }
  if (self.hasDigest) {
    [dictionary setObject: self.digest forKey: @"digest"];
  }
  if (self.hasFileName) {
    [dictionary setObject: self.fileName forKey: @"fileName"];
  }
  if (self.hasFlags) {
      [dictionary setObject:[NSNumber numberWithInteger:self.flags] forKey:@"flags"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosAttachmentPointer class]]) {
    return NO;
  }
  OWSSignalServiceProtosAttachmentPointer *otherMessage = other;
  return self.hasId == otherMessage.hasId && (!self.hasId || self.id == otherMessage.id)
      && self.hasContentType == otherMessage.hasContentType
      && (!self.hasContentType || [self.contentType isEqual:otherMessage.contentType])
      && self.hasKey == otherMessage.hasKey && (!self.hasKey || [self.key isEqual:otherMessage.key])
      && self.hasSize == otherMessage.hasSize && (!self.hasSize || self.size == otherMessage.size)
      && self.hasThumbnail == otherMessage.hasThumbnail
      && (!self.hasThumbnail || [self.thumbnail isEqual:otherMessage.thumbnail])
      && self.hasDigest == otherMessage.hasDigest && (!self.hasDigest || [self.digest isEqual:otherMessage.digest])
      && self.hasFileName == otherMessage.hasFileName
      && (!self.hasFileName || [self.fileName isEqual:otherMessage.fileName]) && self.hasFlags == otherMessage.hasFlags
      && (!self.hasFlags || self.flags == otherMessage.flags)
      && (self.unknownFields == otherMessage.unknownFields
             || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasContentType) {
    hashCode = hashCode * 31 + [self.contentType hash];
  }
  if (self.hasKey) {
    hashCode = hashCode * 31 + [self.key hash];
  }
  if (self.hasSize) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.size] hash];
  }
  if (self.hasThumbnail) {
    hashCode = hashCode * 31 + [self.thumbnail hash];
  }
  if (self.hasDigest) {
    hashCode = hashCode * 31 + [self.digest hash];
  }
  if (self.hasFileName) {
    hashCode = hashCode * 31 + [self.fileName hash];
  }
  if (self.hasFlags) {
      hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.flags] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL OWSSignalServiceProtosAttachmentPointerFlagsIsValidValue(OWSSignalServiceProtosAttachmentPointerFlags value)
{
    switch (value) {
        case OWSSignalServiceProtosAttachmentPointerFlagsVoiceMessage:
            return YES;
        default:
            return NO;
    }
}
NSString *NSStringFromOWSSignalServiceProtosAttachmentPointerFlags(OWSSignalServiceProtosAttachmentPointerFlags value)
{
    switch (value) {
        case OWSSignalServiceProtosAttachmentPointerFlagsVoiceMessage:
            return @"OWSSignalServiceProtosAttachmentPointerFlagsVoiceMessage";
        default:
            return nil;
    }
}

@interface OWSSignalServiceProtosAttachmentPointerBuilder()
@property (strong) OWSSignalServiceProtosAttachmentPointer* resultAttachmentPointer;
@end

@implementation OWSSignalServiceProtosAttachmentPointerBuilder
@synthesize resultAttachmentPointer;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAttachmentPointer = [[OWSSignalServiceProtosAttachmentPointer alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAttachmentPointer;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clear {
  self.resultAttachmentPointer = [[OWSSignalServiceProtosAttachmentPointer alloc] init];
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clone {
  return [OWSSignalServiceProtosAttachmentPointer builderWithPrototype:resultAttachmentPointer];
}
- (OWSSignalServiceProtosAttachmentPointer*) defaultInstance {
  return [OWSSignalServiceProtosAttachmentPointer defaultInstance];
}
- (OWSSignalServiceProtosAttachmentPointer*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosAttachmentPointer*) buildPartial {
  OWSSignalServiceProtosAttachmentPointer* returnMe = resultAttachmentPointer;
  self.resultAttachmentPointer = nil;
  return returnMe;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) mergeFrom:(OWSSignalServiceProtosAttachmentPointer*) other {
  if (other == [OWSSignalServiceProtosAttachmentPointer defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasContentType) {
    [self setContentType:other.contentType];
  }
  if (other.hasKey) {
    [self setKey:other.key];
  }
  if (other.hasSize) {
    [self setSize:other.size];
  }
  if (other.hasThumbnail) {
    [self setThumbnail:other.thumbnail];
  }
  if (other.hasDigest) {
    [self setDigest:other.digest];
  }
  if (other.hasFileName) {
    [self setFileName:other.fileName];
  }
  if (other.hasFlags) {
      [self setFlags:other.flags];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 9: {
        [self setId:[input readFixed64]];
        break;
      }
      case 18: {
        [self setContentType:[input readString]];
        break;
      }
      case 26: {
        [self setKey:[input readData]];
        break;
      }
      case 32: {
        [self setSize:[input readUInt32]];
        break;
      }
      case 42: {
        [self setThumbnail:[input readData]];
        break;
      }
      case 50: {
        [self setDigest:[input readData]];
        break;
      }
      case 58: {
        [self setFileName:[input readString]];
        break;
      }
      case 64: {
          [self setFlags:[input readUInt32]];
          break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultAttachmentPointer.hasId;
}
- (UInt64) id {
  return resultAttachmentPointer.id;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setId:(UInt64) value {
  resultAttachmentPointer.hasId = YES;
  resultAttachmentPointer.id = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearId {
  resultAttachmentPointer.hasId = NO;
  resultAttachmentPointer.id = 0L;
  return self;
}
- (BOOL) hasContentType {
  return resultAttachmentPointer.hasContentType;
}
- (NSString*) contentType {
  return resultAttachmentPointer.contentType;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setContentType:(NSString*) value {
  resultAttachmentPointer.hasContentType = YES;
  resultAttachmentPointer.contentType = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearContentType {
  resultAttachmentPointer.hasContentType = NO;
  resultAttachmentPointer.contentType = @"";
  return self;
}
- (BOOL) hasKey {
  return resultAttachmentPointer.hasKey;
}
- (NSData*) key {
  return resultAttachmentPointer.key;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setKey:(NSData*) value {
  resultAttachmentPointer.hasKey = YES;
  resultAttachmentPointer.key = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearKey {
  resultAttachmentPointer.hasKey = NO;
  resultAttachmentPointer.key = [NSData data];
  return self;
}
- (BOOL) hasSize {
  return resultAttachmentPointer.hasSize;
}
- (UInt32) size {
  return resultAttachmentPointer.size;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setSize:(UInt32) value {
  resultAttachmentPointer.hasSize = YES;
  resultAttachmentPointer.size = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearSize {
  resultAttachmentPointer.hasSize = NO;
  resultAttachmentPointer.size = 0;
  return self;
}
- (BOOL) hasThumbnail {
  return resultAttachmentPointer.hasThumbnail;
}
- (NSData*) thumbnail {
  return resultAttachmentPointer.thumbnail;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setThumbnail:(NSData*) value {
  resultAttachmentPointer.hasThumbnail = YES;
  resultAttachmentPointer.thumbnail = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearThumbnail {
  resultAttachmentPointer.hasThumbnail = NO;
  resultAttachmentPointer.thumbnail = [NSData data];
  return self;
}
- (BOOL) hasDigest {
  return resultAttachmentPointer.hasDigest;
}
- (NSData*) digest {
  return resultAttachmentPointer.digest;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setDigest:(NSData*) value {
  resultAttachmentPointer.hasDigest = YES;
  resultAttachmentPointer.digest = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearDigest {
  resultAttachmentPointer.hasDigest = NO;
  resultAttachmentPointer.digest = [NSData data];
  return self;
}
- (BOOL) hasFileName {
  return resultAttachmentPointer.hasFileName;
}
- (NSString*) fileName {
  return resultAttachmentPointer.fileName;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) setFileName:(NSString*) value {
  resultAttachmentPointer.hasFileName = YES;
  resultAttachmentPointer.fileName = value;
  return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder*) clearFileName {
  resultAttachmentPointer.hasFileName = NO;
  resultAttachmentPointer.fileName = @"";
  return self;
}
- (BOOL)hasFlags
{
    return resultAttachmentPointer.hasFlags;
}
- (UInt32)flags
{
    return resultAttachmentPointer.flags;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder *)setFlags:(UInt32)value
{
    resultAttachmentPointer.hasFlags = YES;
    resultAttachmentPointer.flags = value;
    return self;
}
- (OWSSignalServiceProtosAttachmentPointerBuilder *)clearFlags
{
    resultAttachmentPointer.hasFlags = NO;
    resultAttachmentPointer.flags = 0;
    return self;
}
@end

@interface OWSSignalServiceProtosGroupContext ()
@property (strong) NSData* id;
@property OWSSignalServiceProtosGroupContextType type;
@property (strong) NSString* name;
@property (strong) NSMutableArray * membersArray;
@property (strong) OWSSignalServiceProtosAttachmentPointer* avatar;
@end

@implementation OWSSignalServiceProtosGroupContext

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasType {
  return !!hasType_;
}
- (void) setHasType:(BOOL) _value_ {
  hasType_ = !!_value_;
}
@synthesize type;
- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) _value_ {
  hasName_ = !!_value_;
}
@synthesize name;
@synthesize membersArray;
@dynamic members;
- (BOOL) hasAvatar {
  return !!hasAvatar_;
}
- (void) setHasAvatar:(BOOL) _value_ {
  hasAvatar_ = !!_value_;
}
@synthesize avatar;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = [NSData data];
    self.type = OWSSignalServiceProtosGroupContextTypeUnknown;
    self.name = @"";
    self.avatar = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
  }
  return self;
}
static OWSSignalServiceProtosGroupContext* defaultOWSSignalServiceProtosGroupContextInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosGroupContext class]) {
    defaultOWSSignalServiceProtosGroupContextInstance = [[OWSSignalServiceProtosGroupContext alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupContextInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupContextInstance;
}
- (NSArray *)members {
  return membersArray;
}
- (NSString*)membersAtIndex:(NSUInteger)index {
  return [membersArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeData:1 value:self.id];
  }
  if (self.hasType) {
    [output writeEnum:2 value:self.type];
  }
  if (self.hasName) {
    [output writeString:3 value:self.name];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    [output writeString:4 value:element];
  }];
  if (self.hasAvatar) {
    [output writeMessage:5 value:self.avatar];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeDataSize(1, self.id);
  }
  if (self.hasType) {
    size_ += computeEnumSize(2, self.type);
  }
  if (self.hasName) {
    size_ += computeStringSize(3, self.name);
  }
  {
    __block SInt32 dataSize = 0;
    const NSUInteger count = self.membersArray.count;
    [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
      dataSize += computeStringSizeNoTag(element);
    }];
    size_ += dataSize;
    size_ += (SInt32)(1 * count);
  }
  if (self.hasAvatar) {
    size_ += computeMessageSize(5, self.avatar);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosGroupContext*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosGroupContext*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupContext*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupContext*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupContext*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupContext*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupContext*)[[[OWSSignalServiceProtosGroupContext builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupContextBuilder*) builder {
  return [[OWSSignalServiceProtosGroupContextBuilder alloc] init];
}
+ (OWSSignalServiceProtosGroupContextBuilder*) builderWithPrototype:(OWSSignalServiceProtosGroupContext*) prototype {
  return [[OWSSignalServiceProtosGroupContext builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosGroupContextBuilder*) builder {
  return [OWSSignalServiceProtosGroupContext builder];
}
- (OWSSignalServiceProtosGroupContextBuilder*) toBuilder {
  return [OWSSignalServiceProtosGroupContext builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", self.id];
  }
  if (self.hasType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"type", NSStringFromOWSSignalServiceProtosGroupContextType(self.type)];
  }
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@: %@\n", indent, @"members", obj];
  }];
  if (self.hasAvatar) {
    [output appendFormat:@"%@%@ {\n", indent, @"avatar"];
    [self.avatar writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: self.id forKey: @"id"];
  }
  if (self.hasType) {
    [dictionary setObject: @(self.type) forKey: @"type"];
  }
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  [dictionary setObject:self.members forKey: @"members"];
  if (self.hasAvatar) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.avatar storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"avatar"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosGroupContext class]]) {
    return NO;
  }
  OWSSignalServiceProtosGroupContext *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || [self.id isEqual:otherMessage.id]) &&
      self.hasType == otherMessage.hasType &&
      (!self.hasType || self.type == otherMessage.type) &&
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      [self.membersArray isEqualToArray:otherMessage.membersArray] &&
      self.hasAvatar == otherMessage.hasAvatar &&
      (!self.hasAvatar || [self.avatar isEqual:otherMessage.avatar]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [self.id hash];
  }
  if (self.hasType) {
    hashCode = hashCode * 31 + self.type;
  }
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasAvatar) {
    hashCode = hashCode * 31 + [self.avatar hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL OWSSignalServiceProtosGroupContextTypeIsValidValue(OWSSignalServiceProtosGroupContextType value) {
  switch (value) {
    case OWSSignalServiceProtosGroupContextTypeUnknown:
    case OWSSignalServiceProtosGroupContextTypeUpdate:
    case OWSSignalServiceProtosGroupContextTypeDeliver:
    case OWSSignalServiceProtosGroupContextTypeQuit:
    case OWSSignalServiceProtosGroupContextTypeRequestInfo:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromOWSSignalServiceProtosGroupContextType(OWSSignalServiceProtosGroupContextType value) {
  switch (value) {
    case OWSSignalServiceProtosGroupContextTypeUnknown:
      return @"OWSSignalServiceProtosGroupContextTypeUnknown";
    case OWSSignalServiceProtosGroupContextTypeUpdate:
      return @"OWSSignalServiceProtosGroupContextTypeUpdate";
    case OWSSignalServiceProtosGroupContextTypeDeliver:
      return @"OWSSignalServiceProtosGroupContextTypeDeliver";
    case OWSSignalServiceProtosGroupContextTypeQuit:
      return @"OWSSignalServiceProtosGroupContextTypeQuit";
    case OWSSignalServiceProtosGroupContextTypeRequestInfo:
      return @"OWSSignalServiceProtosGroupContextTypeRequestInfo";
    default:
      return nil;
  }
}

@interface OWSSignalServiceProtosGroupContextBuilder()
@property (strong) OWSSignalServiceProtosGroupContext* resultGroupContext;
@end

@implementation OWSSignalServiceProtosGroupContextBuilder
@synthesize resultGroupContext;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultGroupContext = [[OWSSignalServiceProtosGroupContext alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultGroupContext;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clear {
  self.resultGroupContext = [[OWSSignalServiceProtosGroupContext alloc] init];
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clone {
  return [OWSSignalServiceProtosGroupContext builderWithPrototype:resultGroupContext];
}
- (OWSSignalServiceProtosGroupContext*) defaultInstance {
  return [OWSSignalServiceProtosGroupContext defaultInstance];
}
- (OWSSignalServiceProtosGroupContext*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosGroupContext*) buildPartial {
  OWSSignalServiceProtosGroupContext* returnMe = resultGroupContext;
  self.resultGroupContext = nil;
  return returnMe;
}
- (OWSSignalServiceProtosGroupContextBuilder*) mergeFrom:(OWSSignalServiceProtosGroupContext*) other {
  if (other == [OWSSignalServiceProtosGroupContext defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasType) {
    [self setType:other.type];
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.membersArray.count > 0) {
    if (resultGroupContext.membersArray == nil) {
      resultGroupContext.membersArray = [[NSMutableArray alloc] initWithArray:other.membersArray];
    } else {
      [resultGroupContext.membersArray addObjectsFromArray:other.membersArray];
    }
  }
  if (other.hasAvatar) {
    [self mergeAvatar:other.avatar];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosGroupContextBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setId:[input readData]];
        break;
      }
      case 16: {
        OWSSignalServiceProtosGroupContextType value = (OWSSignalServiceProtosGroupContextType)[input readEnum];
        if (OWSSignalServiceProtosGroupContextTypeIsValidValue(value)) {
          [self setType:value];
        } else {
          [unknownFields mergeVarintField:2 value:value];
        }
        break;
      }
      case 26: {
        [self setName:[input readString]];
        break;
      }
      case 34: {
        [self addMembers:[input readString]];
        break;
      }
      case 42: {
        OWSSignalServiceProtosAttachmentPointerBuilder* subBuilder = [OWSSignalServiceProtosAttachmentPointer builder];
        if (self.hasAvatar) {
          [subBuilder mergeFrom:self.avatar];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setAvatar:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultGroupContext.hasId;
}
- (NSData*) id {
  return resultGroupContext.id;
}
- (OWSSignalServiceProtosGroupContextBuilder*) setId:(NSData*) value {
  resultGroupContext.hasId = YES;
  resultGroupContext.id = value;
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clearId {
  resultGroupContext.hasId = NO;
  resultGroupContext.id = [NSData data];
  return self;
}
- (BOOL) hasType {
  return resultGroupContext.hasType;
}
- (OWSSignalServiceProtosGroupContextType) type {
  return resultGroupContext.type;
}
- (OWSSignalServiceProtosGroupContextBuilder*) setType:(OWSSignalServiceProtosGroupContextType) value {
  resultGroupContext.hasType = YES;
  resultGroupContext.type = value;
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clearType {
  resultGroupContext.hasType = NO;
  resultGroupContext.type = OWSSignalServiceProtosGroupContextTypeUnknown;
  return self;
}
- (BOOL) hasName {
  return resultGroupContext.hasName;
}
- (NSString*) name {
  return resultGroupContext.name;
}
- (OWSSignalServiceProtosGroupContextBuilder*) setName:(NSString*) value {
  resultGroupContext.hasName = YES;
  resultGroupContext.name = value;
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clearName {
  resultGroupContext.hasName = NO;
  resultGroupContext.name = @"";
  return self;
}
- (NSMutableArray *)members {
  return resultGroupContext.membersArray;
}
- (NSString*)membersAtIndex:(NSUInteger)index {
  return [resultGroupContext membersAtIndex:index];
}
- (OWSSignalServiceProtosGroupContextBuilder *)addMembers:(NSString*)value {
  if (resultGroupContext.membersArray == nil) {
    resultGroupContext.membersArray = [[NSMutableArray alloc]init];
  }
  [resultGroupContext.membersArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder *)setMembersArray:(NSArray *)array {
  resultGroupContext.membersArray = [[NSMutableArray alloc] initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder *)clearMembers {
  resultGroupContext.membersArray = nil;
  return self;
}
- (BOOL) hasAvatar {
  return resultGroupContext.hasAvatar;
}
- (OWSSignalServiceProtosAttachmentPointer*) avatar {
  return resultGroupContext.avatar;
}
- (OWSSignalServiceProtosGroupContextBuilder*) setAvatar:(OWSSignalServiceProtosAttachmentPointer*) value {
  resultGroupContext.hasAvatar = YES;
  resultGroupContext.avatar = value;
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) setAvatarBuilder:(OWSSignalServiceProtosAttachmentPointerBuilder*) builderForValue {
  return [self setAvatar:[builderForValue build]];
}
- (OWSSignalServiceProtosGroupContextBuilder*) mergeAvatar:(OWSSignalServiceProtosAttachmentPointer*) value {
  if (resultGroupContext.hasAvatar &&
      resultGroupContext.avatar != [OWSSignalServiceProtosAttachmentPointer defaultInstance]) {
    resultGroupContext.avatar =
      [[[OWSSignalServiceProtosAttachmentPointer builderWithPrototype:resultGroupContext.avatar] mergeFrom:value] buildPartial];
  } else {
    resultGroupContext.avatar = value;
  }
  resultGroupContext.hasAvatar = YES;
  return self;
}
- (OWSSignalServiceProtosGroupContextBuilder*) clearAvatar {
  resultGroupContext.hasAvatar = NO;
  resultGroupContext.avatar = [OWSSignalServiceProtosAttachmentPointer defaultInstance];
  return self;
}
@end

@interface OWSSignalServiceProtosContactDetails ()
@property (strong) NSString* number;
@property (strong) NSString* name;
@property (strong) OWSSignalServiceProtosContactDetailsAvatar* avatar;
@property (strong) NSString* color;
@end

@implementation OWSSignalServiceProtosContactDetails

- (BOOL) hasNumber {
  return !!hasNumber_;
}
- (void) setHasNumber:(BOOL) _value_ {
  hasNumber_ = !!_value_;
}
@synthesize number;
- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) _value_ {
  hasName_ = !!_value_;
}
@synthesize name;
- (BOOL) hasAvatar {
  return !!hasAvatar_;
}
- (void) setHasAvatar:(BOOL) _value_ {
  hasAvatar_ = !!_value_;
}
@synthesize avatar;
- (BOOL) hasColor {
  return !!hasColor_;
}
- (void) setHasColor:(BOOL) _value_ {
  hasColor_ = !!_value_;
}
@synthesize color;
- (instancetype) init {
  if ((self = [super init])) {
    self.number = @"";
    self.name = @"";
    self.avatar = [OWSSignalServiceProtosContactDetailsAvatar defaultInstance];
    self.color = @"";
  }
  return self;
}
static OWSSignalServiceProtosContactDetails* defaultOWSSignalServiceProtosContactDetailsInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosContactDetails class]) {
    defaultOWSSignalServiceProtosContactDetailsInstance = [[OWSSignalServiceProtosContactDetails alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContactDetailsInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContactDetailsInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasNumber) {
    [output writeString:1 value:self.number];
  }
  if (self.hasName) {
    [output writeString:2 value:self.name];
  }
  if (self.hasAvatar) {
    [output writeMessage:3 value:self.avatar];
  }
  if (self.hasColor) {
    [output writeString:4 value:self.color];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasNumber) {
    size_ += computeStringSize(1, self.number);
  }
  if (self.hasName) {
    size_ += computeStringSize(2, self.name);
  }
  if (self.hasAvatar) {
    size_ += computeMessageSize(3, self.avatar);
  }
  if (self.hasColor) {
    size_ += computeStringSize(4, self.color);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosContactDetails*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosContactDetails*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetails*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosContactDetails*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetails*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosContactDetails*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetails*)[[[OWSSignalServiceProtosContactDetails builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetailsBuilder*) builder {
  return [[OWSSignalServiceProtosContactDetailsBuilder alloc] init];
}
+ (OWSSignalServiceProtosContactDetailsBuilder*) builderWithPrototype:(OWSSignalServiceProtosContactDetails*) prototype {
  return [[OWSSignalServiceProtosContactDetails builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosContactDetailsBuilder*) builder {
  return [OWSSignalServiceProtosContactDetails builder];
}
- (OWSSignalServiceProtosContactDetailsBuilder*) toBuilder {
  return [OWSSignalServiceProtosContactDetails builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasNumber) {
    [output appendFormat:@"%@%@: %@\n", indent, @"number", self.number];
  }
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  if (self.hasAvatar) {
    [output appendFormat:@"%@%@ {\n", indent, @"avatar"];
    [self.avatar writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasColor) {
    [output appendFormat:@"%@%@: %@\n", indent, @"color", self.color];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasNumber) {
    [dictionary setObject: self.number forKey: @"number"];
  }
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  if (self.hasAvatar) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.avatar storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"avatar"];
  }
  if (self.hasColor) {
    [dictionary setObject: self.color forKey: @"color"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosContactDetails class]]) {
    return NO;
  }
  OWSSignalServiceProtosContactDetails *otherMessage = other;
  return
      self.hasNumber == otherMessage.hasNumber &&
      (!self.hasNumber || [self.number isEqual:otherMessage.number]) &&
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      self.hasAvatar == otherMessage.hasAvatar &&
      (!self.hasAvatar || [self.avatar isEqual:otherMessage.avatar]) &&
      self.hasColor == otherMessage.hasColor &&
      (!self.hasColor || [self.color isEqual:otherMessage.color]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasNumber) {
    hashCode = hashCode * 31 + [self.number hash];
  }
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  if (self.hasAvatar) {
    hashCode = hashCode * 31 + [self.avatar hash];
  }
  if (self.hasColor) {
    hashCode = hashCode * 31 + [self.color hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosContactDetailsAvatar ()
@property (strong) NSString* contentType;
@property UInt32 length;
@end

@implementation OWSSignalServiceProtosContactDetailsAvatar

- (BOOL) hasContentType {
  return !!hasContentType_;
}
- (void) setHasContentType:(BOOL) _value_ {
  hasContentType_ = !!_value_;
}
@synthesize contentType;
- (BOOL) hasLength {
  return !!hasLength_;
}
- (void) setHasLength:(BOOL) _value_ {
  hasLength_ = !!_value_;
}
@synthesize length;
- (instancetype) init {
  if ((self = [super init])) {
    self.contentType = @"";
    self.length = 0;
  }
  return self;
}
static OWSSignalServiceProtosContactDetailsAvatar* defaultOWSSignalServiceProtosContactDetailsAvatarInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosContactDetailsAvatar class]) {
    defaultOWSSignalServiceProtosContactDetailsAvatarInstance = [[OWSSignalServiceProtosContactDetailsAvatar alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContactDetailsAvatarInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosContactDetailsAvatarInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasContentType) {
    [output writeString:1 value:self.contentType];
  }
  if (self.hasLength) {
    [output writeUInt32:2 value:self.length];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasContentType) {
    size_ += computeStringSize(1, self.contentType);
  }
  if (self.hasLength) {
    size_ += computeUInt32Size(2, self.length);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatar*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosContactDetailsAvatar*)[[[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosContactDetailsAvatarBuilder*) builder {
  return [[OWSSignalServiceProtosContactDetailsAvatarBuilder alloc] init];
}
+ (OWSSignalServiceProtosContactDetailsAvatarBuilder*) builderWithPrototype:(OWSSignalServiceProtosContactDetailsAvatar*) prototype {
  return [[OWSSignalServiceProtosContactDetailsAvatar builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) builder {
  return [OWSSignalServiceProtosContactDetailsAvatar builder];
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) toBuilder {
  return [OWSSignalServiceProtosContactDetailsAvatar builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasContentType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"contentType", self.contentType];
  }
  if (self.hasLength) {
    [output appendFormat:@"%@%@: %@\n", indent, @"length", [NSNumber numberWithInteger:self.length]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasContentType) {
    [dictionary setObject: self.contentType forKey: @"contentType"];
  }
  if (self.hasLength) {
    [dictionary setObject: [NSNumber numberWithInteger:self.length] forKey: @"length"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosContactDetailsAvatar class]]) {
    return NO;
  }
  OWSSignalServiceProtosContactDetailsAvatar *otherMessage = other;
  return
      self.hasContentType == otherMessage.hasContentType &&
      (!self.hasContentType || [self.contentType isEqual:otherMessage.contentType]) &&
      self.hasLength == otherMessage.hasLength &&
      (!self.hasLength || self.length == otherMessage.length) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasContentType) {
    hashCode = hashCode * 31 + [self.contentType hash];
  }
  if (self.hasLength) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.length] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosContactDetailsAvatarBuilder()
@property (strong) OWSSignalServiceProtosContactDetailsAvatar* resultAvatar;
@end

@implementation OWSSignalServiceProtosContactDetailsAvatarBuilder
@synthesize resultAvatar;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAvatar = [[OWSSignalServiceProtosContactDetailsAvatar alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAvatar;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) clear {
  self.resultAvatar = [[OWSSignalServiceProtosContactDetailsAvatar alloc] init];
  return self;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) clone {
  return [OWSSignalServiceProtosContactDetailsAvatar builderWithPrototype:resultAvatar];
}
- (OWSSignalServiceProtosContactDetailsAvatar*) defaultInstance {
  return [OWSSignalServiceProtosContactDetailsAvatar defaultInstance];
}
- (OWSSignalServiceProtosContactDetailsAvatar*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosContactDetailsAvatar*) buildPartial {
  OWSSignalServiceProtosContactDetailsAvatar* returnMe = resultAvatar;
  self.resultAvatar = nil;
  return returnMe;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) mergeFrom:(OWSSignalServiceProtosContactDetailsAvatar*) other {
  if (other == [OWSSignalServiceProtosContactDetailsAvatar defaultInstance]) {
    return self;
  }
  if (other.hasContentType) {
    [self setContentType:other.contentType];
  }
  if (other.hasLength) {
    [self setLength:other.length];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setContentType:[input readString]];
        break;
      }
      case 16: {
        [self setLength:[input readUInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasContentType {
  return resultAvatar.hasContentType;
}
- (NSString*) contentType {
  return resultAvatar.contentType;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) setContentType:(NSString*) value {
  resultAvatar.hasContentType = YES;
  resultAvatar.contentType = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) clearContentType {
  resultAvatar.hasContentType = NO;
  resultAvatar.contentType = @"";
  return self;
}
- (BOOL) hasLength {
  return resultAvatar.hasLength;
}
- (UInt32) length {
  return resultAvatar.length;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) setLength:(UInt32) value {
  resultAvatar.hasLength = YES;
  resultAvatar.length = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsAvatarBuilder*) clearLength {
  resultAvatar.hasLength = NO;
  resultAvatar.length = 0;
  return self;
}
@end

@interface OWSSignalServiceProtosContactDetailsBuilder()
@property (strong) OWSSignalServiceProtosContactDetails* resultContactDetails;
@end

@implementation OWSSignalServiceProtosContactDetailsBuilder
@synthesize resultContactDetails;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultContactDetails = [[OWSSignalServiceProtosContactDetails alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultContactDetails;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clear {
  self.resultContactDetails = [[OWSSignalServiceProtosContactDetails alloc] init];
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clone {
  return [OWSSignalServiceProtosContactDetails builderWithPrototype:resultContactDetails];
}
- (OWSSignalServiceProtosContactDetails*) defaultInstance {
  return [OWSSignalServiceProtosContactDetails defaultInstance];
}
- (OWSSignalServiceProtosContactDetails*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosContactDetails*) buildPartial {
  OWSSignalServiceProtosContactDetails* returnMe = resultContactDetails;
  self.resultContactDetails = nil;
  return returnMe;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) mergeFrom:(OWSSignalServiceProtosContactDetails*) other {
  if (other == [OWSSignalServiceProtosContactDetails defaultInstance]) {
    return self;
  }
  if (other.hasNumber) {
    [self setNumber:other.number];
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.hasAvatar) {
    [self mergeAvatar:other.avatar];
  }
  if (other.hasColor) {
    [self setColor:other.color];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosContactDetailsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setNumber:[input readString]];
        break;
      }
      case 18: {
        [self setName:[input readString]];
        break;
      }
      case 26: {
        OWSSignalServiceProtosContactDetailsAvatarBuilder* subBuilder = [OWSSignalServiceProtosContactDetailsAvatar builder];
        if (self.hasAvatar) {
          [subBuilder mergeFrom:self.avatar];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setAvatar:[subBuilder buildPartial]];
        break;
      }
      case 34: {
        [self setColor:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasNumber {
  return resultContactDetails.hasNumber;
}
- (NSString*) number {
  return resultContactDetails.number;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) setNumber:(NSString*) value {
  resultContactDetails.hasNumber = YES;
  resultContactDetails.number = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clearNumber {
  resultContactDetails.hasNumber = NO;
  resultContactDetails.number = @"";
  return self;
}
- (BOOL) hasName {
  return resultContactDetails.hasName;
}
- (NSString*) name {
  return resultContactDetails.name;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) setName:(NSString*) value {
  resultContactDetails.hasName = YES;
  resultContactDetails.name = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clearName {
  resultContactDetails.hasName = NO;
  resultContactDetails.name = @"";
  return self;
}
- (BOOL) hasAvatar {
  return resultContactDetails.hasAvatar;
}
- (OWSSignalServiceProtosContactDetailsAvatar*) avatar {
  return resultContactDetails.avatar;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) setAvatar:(OWSSignalServiceProtosContactDetailsAvatar*) value {
  resultContactDetails.hasAvatar = YES;
  resultContactDetails.avatar = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) setAvatarBuilder:(OWSSignalServiceProtosContactDetailsAvatarBuilder*) builderForValue {
  return [self setAvatar:[builderForValue build]];
}
- (OWSSignalServiceProtosContactDetailsBuilder*) mergeAvatar:(OWSSignalServiceProtosContactDetailsAvatar*) value {
  if (resultContactDetails.hasAvatar &&
      resultContactDetails.avatar != [OWSSignalServiceProtosContactDetailsAvatar defaultInstance]) {
    resultContactDetails.avatar =
      [[[OWSSignalServiceProtosContactDetailsAvatar builderWithPrototype:resultContactDetails.avatar] mergeFrom:value] buildPartial];
  } else {
    resultContactDetails.avatar = value;
  }
  resultContactDetails.hasAvatar = YES;
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clearAvatar {
  resultContactDetails.hasAvatar = NO;
  resultContactDetails.avatar = [OWSSignalServiceProtosContactDetailsAvatar defaultInstance];
  return self;
}
- (BOOL) hasColor {
  return resultContactDetails.hasColor;
}
- (NSString*) color {
  return resultContactDetails.color;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) setColor:(NSString*) value {
  resultContactDetails.hasColor = YES;
  resultContactDetails.color = value;
  return self;
}
- (OWSSignalServiceProtosContactDetailsBuilder*) clearColor {
  resultContactDetails.hasColor = NO;
  resultContactDetails.color = @"";
  return self;
}
@end

@interface OWSSignalServiceProtosGroupDetails ()
@property (strong) NSData* id;
@property (strong) NSString* name;
@property (strong) NSMutableArray * membersArray;
@property (strong) OWSSignalServiceProtosGroupDetailsAvatar* avatar;
@property BOOL active;
@end

@implementation OWSSignalServiceProtosGroupDetails

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) _value_ {
  hasName_ = !!_value_;
}
@synthesize name;
@synthesize membersArray;
@dynamic members;
- (BOOL) hasAvatar {
  return !!hasAvatar_;
}
- (void) setHasAvatar:(BOOL) _value_ {
  hasAvatar_ = !!_value_;
}
@synthesize avatar;
- (BOOL) hasActive {
  return !!hasActive_;
}
- (void) setHasActive:(BOOL) _value_ {
  hasActive_ = !!_value_;
}
- (BOOL) active {
  return !!active_;
}
- (void) setActive:(BOOL) _value_ {
  active_ = !!_value_;
}
- (instancetype) init {
  if ((self = [super init])) {
    self.id = [NSData data];
    self.name = @"";
    self.avatar = [OWSSignalServiceProtosGroupDetailsAvatar defaultInstance];
    self.active = YES;
  }
  return self;
}
static OWSSignalServiceProtosGroupDetails* defaultOWSSignalServiceProtosGroupDetailsInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosGroupDetails class]) {
    defaultOWSSignalServiceProtosGroupDetailsInstance = [[OWSSignalServiceProtosGroupDetails alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupDetailsInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupDetailsInstance;
}
- (NSArray *)members {
  return membersArray;
}
- (NSString*)membersAtIndex:(NSUInteger)index {
  return [membersArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeData:1 value:self.id];
  }
  if (self.hasName) {
    [output writeString:2 value:self.name];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    [output writeString:3 value:element];
  }];
  if (self.hasAvatar) {
    [output writeMessage:4 value:self.avatar];
  }
  if (self.hasActive) {
    [output writeBool:5 value:self.active];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeDataSize(1, self.id);
  }
  if (self.hasName) {
    size_ += computeStringSize(2, self.name);
  }
  {
    __block SInt32 dataSize = 0;
    const NSUInteger count = self.membersArray.count;
    [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
      dataSize += computeStringSizeNoTag(element);
    }];
    size_ += dataSize;
    size_ += (SInt32)(1 * count);
  }
  if (self.hasAvatar) {
    size_ += computeMessageSize(4, self.avatar);
  }
  if (self.hasActive) {
    size_ += computeBoolSize(5, self.active);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupDetails*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetails*)[[[OWSSignalServiceProtosGroupDetails builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetailsBuilder*) builder {
  return [[OWSSignalServiceProtosGroupDetailsBuilder alloc] init];
}
+ (OWSSignalServiceProtosGroupDetailsBuilder*) builderWithPrototype:(OWSSignalServiceProtosGroupDetails*) prototype {
  return [[OWSSignalServiceProtosGroupDetails builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) builder {
  return [OWSSignalServiceProtosGroupDetails builder];
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) toBuilder {
  return [OWSSignalServiceProtosGroupDetails builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", self.id];
  }
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@: %@\n", indent, @"members", obj];
  }];
  if (self.hasAvatar) {
    [output appendFormat:@"%@%@ {\n", indent, @"avatar"];
    [self.avatar writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasActive) {
    [output appendFormat:@"%@%@: %@\n", indent, @"active", [NSNumber numberWithBool:self.active]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: self.id forKey: @"id"];
  }
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  [dictionary setObject:self.members forKey: @"members"];
  if (self.hasAvatar) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.avatar storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"avatar"];
  }
  if (self.hasActive) {
    [dictionary setObject: [NSNumber numberWithBool:self.active] forKey: @"active"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosGroupDetails class]]) {
    return NO;
  }
  OWSSignalServiceProtosGroupDetails *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || [self.id isEqual:otherMessage.id]) &&
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      [self.membersArray isEqualToArray:otherMessage.membersArray] &&
      self.hasAvatar == otherMessage.hasAvatar &&
      (!self.hasAvatar || [self.avatar isEqual:otherMessage.avatar]) &&
      self.hasActive == otherMessage.hasActive &&
      (!self.hasActive || self.active == otherMessage.active) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [self.id hash];
  }
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  [self.membersArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasAvatar) {
    hashCode = hashCode * 31 + [self.avatar hash];
  }
  if (self.hasActive) {
    hashCode = hashCode * 31 + [[NSNumber numberWithBool:self.active] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosGroupDetailsAvatar ()
@property (strong) NSString* contentType;
@property UInt32 length;
@end

@implementation OWSSignalServiceProtosGroupDetailsAvatar

- (BOOL) hasContentType {
  return !!hasContentType_;
}
- (void) setHasContentType:(BOOL) _value_ {
  hasContentType_ = !!_value_;
}
@synthesize contentType;
- (BOOL) hasLength {
  return !!hasLength_;
}
- (void) setHasLength:(BOOL) _value_ {
  hasLength_ = !!_value_;
}
@synthesize length;
- (instancetype) init {
  if ((self = [super init])) {
    self.contentType = @"";
    self.length = 0;
  }
  return self;
}
static OWSSignalServiceProtosGroupDetailsAvatar* defaultOWSSignalServiceProtosGroupDetailsAvatarInstance = nil;
+ (void) initialize {
  if (self == [OWSSignalServiceProtosGroupDetailsAvatar class]) {
    defaultOWSSignalServiceProtosGroupDetailsAvatarInstance = [[OWSSignalServiceProtosGroupDetailsAvatar alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupDetailsAvatarInstance;
}
- (instancetype) defaultInstance {
  return defaultOWSSignalServiceProtosGroupDetailsAvatarInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasContentType) {
    [output writeString:1 value:self.contentType];
  }
  if (self.hasLength) {
    [output writeUInt32:2 value:self.length];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasContentType) {
    size_ += computeStringSize(1, self.contentType);
  }
  if (self.hasLength) {
    size_ += computeUInt32Size(2, self.length);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromData:(NSData*) data {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromData:data] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromInputStream:(NSInputStream*) input {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromCodedInputStream:input] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatar*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (OWSSignalServiceProtosGroupDetailsAvatar*)[[[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) builder {
  return [[OWSSignalServiceProtosGroupDetailsAvatarBuilder alloc] init];
}
+ (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) builderWithPrototype:(OWSSignalServiceProtosGroupDetailsAvatar*) prototype {
  return [[OWSSignalServiceProtosGroupDetailsAvatar builder] mergeFrom:prototype];
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) builder {
  return [OWSSignalServiceProtosGroupDetailsAvatar builder];
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) toBuilder {
  return [OWSSignalServiceProtosGroupDetailsAvatar builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasContentType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"contentType", self.contentType];
  }
  if (self.hasLength) {
    [output appendFormat:@"%@%@: %@\n", indent, @"length", [NSNumber numberWithInteger:self.length]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasContentType) {
    [dictionary setObject: self.contentType forKey: @"contentType"];
  }
  if (self.hasLength) {
    [dictionary setObject: [NSNumber numberWithInteger:self.length] forKey: @"length"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[OWSSignalServiceProtosGroupDetailsAvatar class]]) {
    return NO;
  }
  OWSSignalServiceProtosGroupDetailsAvatar *otherMessage = other;
  return
      self.hasContentType == otherMessage.hasContentType &&
      (!self.hasContentType || [self.contentType isEqual:otherMessage.contentType]) &&
      self.hasLength == otherMessage.hasLength &&
      (!self.hasLength || self.length == otherMessage.length) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasContentType) {
    hashCode = hashCode * 31 + [self.contentType hash];
  }
  if (self.hasLength) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.length] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface OWSSignalServiceProtosGroupDetailsAvatarBuilder()
@property (strong) OWSSignalServiceProtosGroupDetailsAvatar* resultAvatar;
@end

@implementation OWSSignalServiceProtosGroupDetailsAvatarBuilder
@synthesize resultAvatar;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAvatar = [[OWSSignalServiceProtosGroupDetailsAvatar alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAvatar;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) clear {
  self.resultAvatar = [[OWSSignalServiceProtosGroupDetailsAvatar alloc] init];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) clone {
  return [OWSSignalServiceProtosGroupDetailsAvatar builderWithPrototype:resultAvatar];
}
- (OWSSignalServiceProtosGroupDetailsAvatar*) defaultInstance {
  return [OWSSignalServiceProtosGroupDetailsAvatar defaultInstance];
}
- (OWSSignalServiceProtosGroupDetailsAvatar*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosGroupDetailsAvatar*) buildPartial {
  OWSSignalServiceProtosGroupDetailsAvatar* returnMe = resultAvatar;
  self.resultAvatar = nil;
  return returnMe;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) mergeFrom:(OWSSignalServiceProtosGroupDetailsAvatar*) other {
  if (other == [OWSSignalServiceProtosGroupDetailsAvatar defaultInstance]) {
    return self;
  }
  if (other.hasContentType) {
    [self setContentType:other.contentType];
  }
  if (other.hasLength) {
    [self setLength:other.length];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setContentType:[input readString]];
        break;
      }
      case 16: {
        [self setLength:[input readUInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasContentType {
  return resultAvatar.hasContentType;
}
- (NSString*) contentType {
  return resultAvatar.contentType;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) setContentType:(NSString*) value {
  resultAvatar.hasContentType = YES;
  resultAvatar.contentType = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) clearContentType {
  resultAvatar.hasContentType = NO;
  resultAvatar.contentType = @"";
  return self;
}
- (BOOL) hasLength {
  return resultAvatar.hasLength;
}
- (UInt32) length {
  return resultAvatar.length;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) setLength:(UInt32) value {
  resultAvatar.hasLength = YES;
  resultAvatar.length = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsAvatarBuilder*) clearLength {
  resultAvatar.hasLength = NO;
  resultAvatar.length = 0;
  return self;
}
@end

@interface OWSSignalServiceProtosGroupDetailsBuilder()
@property (strong) OWSSignalServiceProtosGroupDetails* resultGroupDetails;
@end

@implementation OWSSignalServiceProtosGroupDetailsBuilder
@synthesize resultGroupDetails;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultGroupDetails = [[OWSSignalServiceProtosGroupDetails alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultGroupDetails;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clear {
  self.resultGroupDetails = [[OWSSignalServiceProtosGroupDetails alloc] init];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clone {
  return [OWSSignalServiceProtosGroupDetails builderWithPrototype:resultGroupDetails];
}
- (OWSSignalServiceProtosGroupDetails*) defaultInstance {
  return [OWSSignalServiceProtosGroupDetails defaultInstance];
}
- (OWSSignalServiceProtosGroupDetails*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (OWSSignalServiceProtosGroupDetails*) buildPartial {
  OWSSignalServiceProtosGroupDetails* returnMe = resultGroupDetails;
  self.resultGroupDetails = nil;
  return returnMe;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) mergeFrom:(OWSSignalServiceProtosGroupDetails*) other {
  if (other == [OWSSignalServiceProtosGroupDetails defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.membersArray.count > 0) {
    if (resultGroupDetails.membersArray == nil) {
      resultGroupDetails.membersArray = [[NSMutableArray alloc] initWithArray:other.membersArray];
    } else {
      [resultGroupDetails.membersArray addObjectsFromArray:other.membersArray];
    }
  }
  if (other.hasAvatar) {
    [self mergeAvatar:other.avatar];
  }
  if (other.hasActive) {
    [self setActive:other.active];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setId:[input readData]];
        break;
      }
      case 18: {
        [self setName:[input readString]];
        break;
      }
      case 26: {
        [self addMembers:[input readString]];
        break;
      }
      case 34: {
        OWSSignalServiceProtosGroupDetailsAvatarBuilder* subBuilder = [OWSSignalServiceProtosGroupDetailsAvatar builder];
        if (self.hasAvatar) {
          [subBuilder mergeFrom:self.avatar];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setAvatar:[subBuilder buildPartial]];
        break;
      }
      case 40: {
        [self setActive:[input readBool]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultGroupDetails.hasId;
}
- (NSData*) id {
  return resultGroupDetails.id;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) setId:(NSData*) value {
  resultGroupDetails.hasId = YES;
  resultGroupDetails.id = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clearId {
  resultGroupDetails.hasId = NO;
  resultGroupDetails.id = [NSData data];
  return self;
}
- (BOOL) hasName {
  return resultGroupDetails.hasName;
}
- (NSString*) name {
  return resultGroupDetails.name;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) setName:(NSString*) value {
  resultGroupDetails.hasName = YES;
  resultGroupDetails.name = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clearName {
  resultGroupDetails.hasName = NO;
  resultGroupDetails.name = @"";
  return self;
}
- (NSMutableArray *)members {
  return resultGroupDetails.membersArray;
}
- (NSString*)membersAtIndex:(NSUInteger)index {
  return [resultGroupDetails membersAtIndex:index];
}
- (OWSSignalServiceProtosGroupDetailsBuilder *)addMembers:(NSString*)value {
  if (resultGroupDetails.membersArray == nil) {
    resultGroupDetails.membersArray = [[NSMutableArray alloc]init];
  }
  [resultGroupDetails.membersArray addObject:value];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder *)setMembersArray:(NSArray *)array {
  resultGroupDetails.membersArray = [[NSMutableArray alloc] initWithArray:array];
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder *)clearMembers {
  resultGroupDetails.membersArray = nil;
  return self;
}
- (BOOL) hasAvatar {
  return resultGroupDetails.hasAvatar;
}
- (OWSSignalServiceProtosGroupDetailsAvatar*) avatar {
  return resultGroupDetails.avatar;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) setAvatar:(OWSSignalServiceProtosGroupDetailsAvatar*) value {
  resultGroupDetails.hasAvatar = YES;
  resultGroupDetails.avatar = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) setAvatarBuilder:(OWSSignalServiceProtosGroupDetailsAvatarBuilder*) builderForValue {
  return [self setAvatar:[builderForValue build]];
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) mergeAvatar:(OWSSignalServiceProtosGroupDetailsAvatar*) value {
  if (resultGroupDetails.hasAvatar &&
      resultGroupDetails.avatar != [OWSSignalServiceProtosGroupDetailsAvatar defaultInstance]) {
    resultGroupDetails.avatar =
      [[[OWSSignalServiceProtosGroupDetailsAvatar builderWithPrototype:resultGroupDetails.avatar] mergeFrom:value] buildPartial];
  } else {
    resultGroupDetails.avatar = value;
  }
  resultGroupDetails.hasAvatar = YES;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clearAvatar {
  resultGroupDetails.hasAvatar = NO;
  resultGroupDetails.avatar = [OWSSignalServiceProtosGroupDetailsAvatar defaultInstance];
  return self;
}
- (BOOL) hasActive {
  return resultGroupDetails.hasActive;
}
- (BOOL) active {
  return resultGroupDetails.active;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) setActive:(BOOL) value {
  resultGroupDetails.hasActive = YES;
  resultGroupDetails.active = value;
  return self;
}
- (OWSSignalServiceProtosGroupDetailsBuilder*) clearActive {
  resultGroupDetails.hasActive = NO;
  resultGroupDetails.active = YES;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
