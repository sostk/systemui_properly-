.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field public static final DENYS:[Ljava/lang/String;

.field public static final DENY_PROPERTY:Ljava/lang/String; = "fastjson.parser.deny"

.field private static awtError:Z

.field public static global:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private static jdk8Error:Z


# instance fields
.field private asmEnable:Z

.field protected asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

.field protected defaultClassLoader:Ljava/lang/ClassLoader;

.field private denyList:[Ljava/lang/String;

.field private final derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->readSystemDenyPropety()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 144
    sput-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    .line 145
    sput-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;)V
    .locals 1
    .param p1, "asmFactory"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;)V

    .line 159
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "asmFactory"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .param p2, "parentClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 134
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 136
    new-instance v1, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 147
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "java.lang.Thread"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    .line 162
    if-eqz p1, :cond_2

    .line 178
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    .line 180
    if-eqz p1, :cond_4

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/sql/Timestamp;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/sql/Date;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/sql/Time;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Date;

    sget-object v3, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Calendar;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Lcom/alibaba/fastjson/JSONArray;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Map;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/TreeMap;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Collection;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/List;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Object;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/String;

    sget-object v3, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/StringBuffer;

    sget-object v3, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Character;

    sget-object v3, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Byte;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Short;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Integer;

    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Long;

    sget-object v3, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Float;

    sget-object v3, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Double;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, [C

    new-instance v3, Lcom/alibaba/fastjson/serializer/CharArrayCodec;

    invoke-direct {v3}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v3, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v3, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/UUID;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/TimeZone;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Locale;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/Currency;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/InetAddress;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/Inet4Address;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/Inet6Address;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/io/File;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/URI;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/net/URL;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/regex/Pattern;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/nio/charset/Charset;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Lcom/alibaba/fastjson/JSONPath;

    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Number;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/StackTraceElement;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/io/Serializable;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Cloneable;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/lang/Comparable;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v2, Ljava/io/Closeable;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string/jumbo v1, "java.lang.Thread"

    .line 263
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDeny(Ljava/lang/String;)V

    .line 264
    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    .line 265
    return-void

    :cond_1
    move v1, v3

    .line 134
    goto/16 :goto_0

    .line 162
    :cond_2
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v1, :cond_0

    .line 164
    if-eqz p2, :cond_3

    .line 167
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V

    .end local p1    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .local v0, "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    move-object p1, v0

    .end local v0    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .restart local p1    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    goto/16 :goto_1

    .line 165
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    new-instance v1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .restart local v0    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    move-object p1, v0

    .end local v0    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .restart local p1    # "asmFactory":Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    goto/16 :goto_1

    .line 181
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    goto/16 :goto_2

    .line 175
    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parentClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;)V

    .line 155
    return-void
.end method

.method private addItemsToDeny([Ljava/lang/String;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 286
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 281
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 282
    aget-object v1, p1, v0

    .line 283
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDeny(Ljava/lang/String;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 673
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 677
    :goto_0
    if-eqz v0, :cond_1

    .line 681
    :goto_1
    return-object v0

    .line 674
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    check-cast v0, Ljava/lang/reflect/Field;

    .restart local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 678
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    check-cast v0, Ljava/lang/reflect/Field;

    .restart local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public static isPrimitive(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Character;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Short;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Double;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/math/BigInteger;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/math/BigDecimal;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/String;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/util/Date;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Date;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Time;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Timestamp;

    if-eq p0, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    const/4 v3, 0x0

    .line 658
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 659
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 665
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_3

    .line 668
    :cond_0
    :goto_1
    return-void

    .line 659
    :cond_1
    aget-object v0, v2, v3

    .line 660
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "fieldName":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 659
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    :cond_2
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 665
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 666
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static readSystemDenyPropety()[Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "fastjson.parser.deny"

    .line 289
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 268
    if-nez p0, :cond_1

    .line 271
    :cond_0
    return-object v1

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ","

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDeny(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 693
    if-nez p1, :cond_1

    .line 694
    :cond_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 698
    .local v0, "denyList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 700
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    .line 701
    return-void
.end method

.method public configFromPropety(Ljava/util/Properties;)V
    .locals 3
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    const-string/jumbo v2, "fastjson.parser.deny"

    .line 274
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "property":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "items":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 603
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 604
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 607
    .local v2, "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 608
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_1

    .line 615
    .end local v2    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 619
    :goto_1
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-direct {v4, p1, v1, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4

    .line 609
    .restart local v2    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v2

    .local v2, "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Void;

    .line 610
    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    .line 611
    .local v2, "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v2    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v4, Ljava/util/List;

    .line 615
    if-ne v3, v4, :cond_4

    .line 616
    :cond_3
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;

    invoke-direct {v4, p1, v1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4

    :cond_4
    const-class v4, Ljava/util/ArrayList;

    .line 615
    if-eq v3, v4, :cond_3

    goto :goto_1
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 23
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 467
    .local v5, "asmEnable":Z
    if-nez v5, :cond_4

    .line 506
    .end local v5    # "asmEnable":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 510
    :goto_1
    if-nez v5, :cond_b

    .line 514
    :cond_1
    :goto_2
    if-nez v5, :cond_c

    .line 518
    :goto_3
    if-nez v5, :cond_d

    .line 575
    :cond_2
    :goto_4
    if-nez v5, :cond_1e

    .line 581
    :cond_3
    :goto_5
    if-eqz v5, :cond_1f

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v7

    .line 587
    .local v7, "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v18

    return-object v18

    .end local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .restart local v5    # "asmEnable":Z
    :cond_4
    const-class v18, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 468
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 470
    .local v16, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v16, :cond_5

    .line 486
    :goto_6
    if-eqz v5, :cond_0

    .line 487
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v17

    .line 488
    .local v17, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v17, :cond_8

    .line 493
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 498
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v17

    const-class v18, Ljava/lang/Object;

    .line 499
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    if-eqz v17, :cond_0

    goto :goto_7

    .line 471
    .end local v17    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONType;->deserializer()Ljava/lang/Class;

    move-result-object v10

    .local v10, "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v18, Ljava/lang/Void;

    .line 472
    move-object/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 483
    :cond_6
    :goto_8
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v5

    goto :goto_6

    .line 474
    :cond_7
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 475
    .local v9, "deseralizer":Ljava/lang/Object;
    instance-of v0, v9, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 476
    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .end local v9    # "deseralizer":Ljava/lang/Object;
    return-object v9

    .line 489
    .end local v10    # "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v17, p1

    goto :goto_7

    .line 494
    :cond_9
    const/4 v5, 0x0

    .local v5, "asmEnable":Z
    goto/16 :goto_0

    .line 507
    .end local v5    # "asmEnable":Z
    .end local v16    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v17    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto :goto_1

    .line 510
    .end local v5    # "asmEnable":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 511
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_2

    .line 515
    .end local v5    # "asmEnable":Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v5

    .local v5, "asmEnable":Z
    goto/16 :goto_3

    .line 519
    .end local v5    # "asmEnable":Z
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v18

    if-nez v18, :cond_13

    .line 522
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v7

    .line 524
    .restart local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    if-nez v5, :cond_14

    .line 528
    :cond_e
    :goto_a
    iget-object v8, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 529
    .local v8, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v5, :cond_15

    .line 533
    :cond_f
    :goto_b
    iget-object v0, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_c
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v15, v19, v18

    .line 534
    .local v15, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v0, v15, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    move/from16 v21, v0

    if-nez v21, :cond_16

    .line 539
    iget-object v13, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 540
    .local v13, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 545
    invoke-virtual {v13}, Ljava/lang/Class;->isMemberClass()Z

    move-result v21

    if-nez v21, :cond_18

    .line 550
    :cond_10
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v21

    if-nez v21, :cond_19

    .line 556
    :cond_11
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    .line 557
    .local v4, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v4, :cond_1a

    .line 565
    :goto_d
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v21

    if-nez v21, :cond_1d

    .line 533
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 520
    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v8    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_13
    const/4 v5, 0x0

    .local v5, "asmEnable":Z
    goto :goto_9

    .line 524
    .end local v5    # "asmEnable":Z
    .restart local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    :cond_14
    iget-object v0, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 525
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto :goto_a

    .line 529
    .end local v5    # "asmEnable":Z
    .restart local v8    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_15
    if-nez v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v18

    if-nez v18, :cond_f

    .line 530
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto :goto_b

    .line 535
    .end local v5    # "asmEnable":Z
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 541
    .end local v5    # "asmEnable":Z
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 545
    .end local v5    # "asmEnable":Z
    :cond_18
    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v21

    if-nez v21, :cond_10

    .line 546
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 551
    .end local v5    # "asmEnable":Z
    :cond_19
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 552
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 558
    .end local v5    # "asmEnable":Z
    .restart local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1a
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1c

    .line 561
    :cond_1b
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 559
    .end local v5    # "asmEnable":Z
    :cond_1c
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1b

    .line 560
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/lang/Void;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1b

    goto :goto_d

    .line 566
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v14

    .line 567
    .local v14, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v14, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    move/from16 v21, v0

    if-nez v21, :cond_12

    .line 568
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_4

    .line 576
    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v5    # "asmEnable":Z
    .end local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v8    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_3

    .line 577
    const/4 v5, 0x0

    .restart local v5    # "asmEnable":Z
    goto/16 :goto_5

    .line 582
    .end local v5    # "asmEnable":Z
    :cond_1f
    new-instance v18, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v18

    .line 587
    .restart local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    :catch_0
    move-exception v12

    .line 592
    .local v12, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v18, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v18

    .end local v12    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v6

    .line 594
    .local v6, "asmError":Lcom/alibaba/fastjson/JSONException;
    new-instance v18, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-object v18

    .end local v6    # "asmError":Lcom/alibaba/fastjson/JSONException;
    :catch_2
    move-exception v11

    .line 596
    .local v11, "e":Ljava/lang/Exception;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "create asm deserializer error, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 480
    .end local v7    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v11    # "e":Ljava/lang/Exception;
    .local v5, "asmEnable":Z
    .restart local v10    # "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :catch_3
    move-exception v18

    goto/16 :goto_8
.end method

.method public getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDerializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 627
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 14
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 329
    .local v6, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-nez v6, :cond_6

    .line 333
    if-eqz p2, :cond_7

    .line 337
    :goto_0
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 338
    .restart local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-nez v6, :cond_8

    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 343
    invoke-virtual {p1, v11}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 344
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v1, :cond_9

    .line 352
    :cond_0
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v11, :cond_a

    .line 353
    :cond_1
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 356
    .restart local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_1
    if-nez v6, :cond_b

    .line 360
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "className":Ljava/lang/String;
    const/16 v11, 0x24

    const/16 v12, 0x2e

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 362
    .local v9, "i":I
    :goto_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    array-length v11, v11

    if-lt v9, v11, :cond_c

    const-string/jumbo v11, "java.awt."

    .line 369
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 386
    :cond_2
    :goto_3
    sget-boolean v11, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    if-eqz v11, :cond_f

    :cond_3
    :goto_4
    const-string/jumbo v11, "java.nio.file.Path"

    .line 419
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 423
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .local v3, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v11, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 425
    invoke-static {v11, v3}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-nez v12, :cond_12

    .line 435
    :goto_6
    if-eqz v6, :cond_13

    .line 439
    :goto_7
    if-nez v6, :cond_14

    .line 443
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-nez v11, :cond_15

    .line 445
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-nez v11, :cond_16

    const-class v11, Ljava/util/Set;

    .line 447
    if-ne p1, v11, :cond_17

    .line 449
    :cond_5
    sget-object v6, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    .line 460
    :goto_8
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 462
    return-object v6

    .line 330
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "className":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_6
    return-object v6

    .line 334
    :cond_7
    move-object/from16 p2, p1

    goto/16 :goto_0

    .line 339
    :cond_8
    return-object v6

    .line 345
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_9
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v10

    .local v10, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Ljava/lang/Void;

    .line 346
    if-eq v10, v11, :cond_0

    .line 347
    invoke-virtual {p0, v10, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    return-object v11

    .line 352
    .end local v10    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v11, :cond_1

    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v11, :cond_1

    goto :goto_1

    .line 357
    :cond_b
    return-object v6

    .line 363
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyList:[Ljava/lang/String;

    aget-object v5, v11, v9

    .line 364
    .local v5, "deny":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 362
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 365
    :cond_d
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parser deny : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 370
    .end local v5    # "deny":Ljava/lang/String;
    :cond_e
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 371
    sget-boolean v11, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    if-nez v11, :cond_2

    .line 373
    :try_start_1
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.awt.Point"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.awt.Font"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.awt.Rectangle"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.awt.Color"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :goto_9
    sget-object v6, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    goto/16 :goto_3

    .line 380
    :catch_0
    move-exception v7

    .line 379
    .local v7, "e":Ljava/lang/Throwable;
    const/4 v11, 0x1

    sput-boolean v11, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    goto :goto_9

    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_f
    :try_start_2
    const-string/jumbo v11, "java.time."

    .line 388
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string/jumbo v11, "java.util.Optional"

    .line 404
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 406
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.util.Optional"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 407
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.util.OptionalDouble"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.util.OptionalInt"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.util.OptionalLong"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v6, v0

    goto/16 :goto_4

    .line 390
    :cond_10
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.LocalDateTime"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.LocalDate"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.LocalTime"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.ZonedDateTime"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 394
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.OffsetDateTime"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.OffsetTime"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.ZoneOffset"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.ZoneRegion"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 398
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.ZoneId"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.Period"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.Duration"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-string/jumbo v12, "java.time.Instant"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 416
    :catch_1
    move-exception v7

    .line 415
    .restart local v7    # "e":Ljava/lang/Throwable;
    const/4 v11, 0x1

    sput-boolean v11, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    goto/16 :goto_4

    .line 420
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_11
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v12, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 425
    .restart local v3    # "classLoader":Ljava/lang/ClassLoader;
    :cond_12
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 427
    .local v2, "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 428
    .local v8, "forType":Ljava/lang/reflect/Type;
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v13, v8, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    .line 433
    .end local v2    # "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    .end local v8    # "forType":Ljava/lang/reflect/Type;
    :catch_2
    move-exception v11

    goto/16 :goto_6

    .line 436
    :cond_13
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .restart local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto/16 :goto_7

    .line 440
    :cond_14
    return-object v6

    .line 444
    :cond_15
    new-instance v6, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .end local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v6, p1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;-><init>(Ljava/lang/Class;)V

    .restart local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto/16 :goto_8

    .line 446
    :cond_16
    sget-object v6, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    goto/16 :goto_8

    :cond_17
    const-class v11, Ljava/util/HashSet;

    .line 447
    if-eq p1, v11, :cond_5

    const-class v11, Ljava/util/Collection;

    if-eq p1, v11, :cond_5

    const-class v11, Ljava/util/List;

    if-eq p1, v11, :cond_5

    const-class v11, Ljava/util/ArrayList;

    if-eq p1, v11, :cond_5

    const-class v11, Ljava/util/Collection;

    .line 450
    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_18

    const-class v11, Ljava/util/Map;

    .line 452
    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_19

    const-class v11, Ljava/lang/Throwable;

    .line 454
    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 457
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    goto/16 :goto_8

    .line 451
    :cond_18
    sget-object v6, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto/16 :goto_8

    .line 453
    :cond_19
    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    goto/16 :goto_8

    .line 455
    :cond_1a
    new-instance v6, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    .end local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v6, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    .restart local v6    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto/16 :goto_8
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 306
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 307
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-nez v0, :cond_0

    .line 311
    instance-of v2, p1, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 315
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_2

    .line 324
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    return-object v2

    .line 308
    :cond_0
    return-object v0

    :cond_1
    move-object v2, p1

    .line 312
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    return-object v2

    :cond_2
    move-object v2, p1

    .line 316
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 317
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 320
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    return-object v2

    .line 318
    :cond_3
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    return-object v2
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 0
    .param p1, "asmEnable"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 299
    return-void
.end method

.method public setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "defaultClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 690
    return-void
.end method
