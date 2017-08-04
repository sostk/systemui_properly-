.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field private static awtError:Z

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private static jdk8Error:Z

.field private static oracleJdbcError:Z

.field private static springfoxError:Z


# instance fields
.field private asm:Z

.field private asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 81
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 82
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 83
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 84
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x400

    .line 216
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "tableSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-boolean v2, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 87
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 220
    new-instance v2, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/16 v4, 0x400

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 223
    :try_start_0
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :goto_1
    const-class v2, Ljava/lang/Boolean;

    .line 232
    sget-object v3, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Character;

    .line 233
    sget-object v3, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Byte;

    .line 234
    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Short;

    .line 235
    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Integer;

    .line 236
    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Long;

    .line 237
    sget-object v3, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Float;

    .line 238
    sget-object v3, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Double;

    .line 239
    sget-object v3, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/math/BigDecimal;

    .line 240
    sget-object v3, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/math/BigInteger;

    .line 241
    sget-object v3, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/String;

    .line 242
    sget-object v3, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [B

    .line 243
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [S

    .line 244
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [I

    .line 245
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [J

    .line 246
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [F

    .line 247
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [D

    .line 248
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [Z

    .line 249
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [C

    .line 250
    sget-object v3, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, [Ljava/lang/Object;

    .line 251
    sget-object v3, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Class;

    .line 252
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/text/SimpleDateFormat;

    .line 254
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/Currency;

    .line 255
    new-instance v3, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v3}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/TimeZone;

    .line 256
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/InetAddress;

    .line 257
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/Inet4Address;

    .line 258
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/Inet6Address;

    .line 259
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/InetSocketAddress;

    .line 260
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/io/File;

    .line 261
    sget-object v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/Appendable;

    .line 262
    sget-object v3, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/StringBuffer;

    .line 263
    sget-object v3, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/StringBuilder;

    .line 264
    sget-object v3, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/nio/charset/Charset;

    .line 265
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/regex/Pattern;

    .line 266
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/Locale;

    .line 267
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/URI;

    .line 268
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/net/URL;

    .line 269
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/UUID;

    .line 270
    sget-object v3, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 274
    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 275
    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 276
    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 277
    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 278
    sget-object v3, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/ref/WeakReference;

    .line 280
    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v2, Ljava/lang/ref/SoftReference;

    .line 281
    sget-object v3, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 282
    return-void

    :cond_0
    const/4 v2, 0x1

    .line 85
    goto/16 :goto_0

    .line 224
    :cond_1
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 227
    .local v0, "eror":Ljava/lang/NoClassDefFoundError;
    iput-boolean v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto/16 :goto_1

    .line 230
    .end local v0    # "eror":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 229
    .local v1, "error":Ljava/lang/ExceptionInInitializerError;
    iput-boolean v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto/16 :goto_1
.end method

.method private final createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 7
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 101
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v4

    .local v4, "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    const/4 v3, 0x0

    .line 103
    .local v3, "i":I
    :goto_0
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 114
    return-object v4

    .line 104
    :cond_0
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v1, v5, v3

    .line 105
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 106
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-nez v5, :cond_2

    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 108
    .local v2, "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v5, :cond_1

    .line 109
    iput-boolean v6, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    goto :goto_1
.end method

.method private final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 119
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/Iterable;

    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-object v1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 24
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 358
    .local v19, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v19, :cond_1

    .line 378
    :goto_0
    if-eqz v19, :cond_4

    .line 401
    :cond_0
    :goto_1
    if-eqz v19, :cond_7

    .line 559
    :goto_2
    return-object v19

    .line 360
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .local v5, "classLoader":Ljava/lang/ClassLoader;
    const-class v20, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 361
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-nez v21, :cond_3

    .line 375
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v19, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto :goto_0

    .line 361
    .restart local v5    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 362
    .local v16, "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 366
    move-object/from16 v0, v16

    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object v3, v0

    .line 367
    .local v3, "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Type;

    .line 368
    .local v11, "forType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 373
    .end local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v11    # "forType":Ljava/lang/reflect/Type;
    .end local v16    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v20

    goto :goto_3

    :cond_4
    const-class v20, Lcom/alibaba/fastjson/JSON;

    .line 379
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 380
    .restart local v5    # "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v5, v0, :cond_0

    :try_start_2
    const-class v20, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 382
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    if-nez v21, :cond_6

    .line 397
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v19, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_1

    .line 382
    :cond_6
    :try_start_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 384
    .restart local v16    # "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 388
    move-object/from16 v0, v16

    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object v3, v0

    .line 389
    .restart local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Type;

    .line 390
    .restart local v11    # "forType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 395
    .end local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    .end local v11    # "forType":Ljava/lang/reflect/Type;
    .end local v16    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v20

    goto :goto_5

    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    :cond_7
    const-class v20, Ljava/util/Map;

    .line 402
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_a

    const-class v20, Ljava/util/List;

    .line 404
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_b

    const-class v20, Ljava/util/Collection;

    .line 406
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_c

    const-class v20, Ljava/util/Date;

    .line 408
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_d

    const-class v20, Lcom/alibaba/fastjson/JSONAware;

    .line 410
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_e

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 412
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_f

    const-class v20, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 414
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 416
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 417
    :cond_8
    sget-object v20, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 557
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v19, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v19    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_2

    .line 403
    :cond_a
    sget-object v20, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 405
    :cond_b
    sget-object v20, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 407
    :cond_c
    sget-object v20, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 409
    :cond_d
    sget-object v20, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 411
    :cond_e
    sget-object v20, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 413
    :cond_f
    sget-object v20, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 415
    :cond_10
    sget-object v20, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 416
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    if-nez v20, :cond_13

    .line 418
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-nez v20, :cond_14

    const-class v20, Ljava/lang/Throwable;

    .line 422
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_15

    const-class v20, Ljava/util/TimeZone;

    .line 426
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_16

    const-class v20, Ljava/lang/Appendable;

    .line 428
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_17

    const-class v20, Ljava/nio/charset/Charset;

    .line 430
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_18

    const-class v20, Ljava/util/Enumeration;

    .line 432
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_19

    const-class v20, Ljava/util/Calendar;

    .line 434
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 436
    :cond_12
    sget-object v20, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 416
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isEnum()Z

    move-result v20

    if-nez v20, :cond_8

    goto :goto_8

    .line 419
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 420
    .local v8, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 421
    .local v7, "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    new-instance v20, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v8, v7}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 423
    .end local v7    # "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v8    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v4

    .line 424
    .local v4, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 425
    new-instance v20, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 427
    .end local v4    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_16
    sget-object v20, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 429
    :cond_17
    sget-object v20, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 431
    :cond_18
    sget-object v20, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 433
    :cond_19
    sget-object v20, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    :cond_1a
    const-class v20, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 435
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_12

    const-class v20, Ljava/sql/Clob;

    .line 437
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 439
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_21

    const-class v20, Ljava/util/Iterator;

    .line 441
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_22

    .line 444
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, "className":Ljava/lang/String;
    const-string/jumbo v20, "java.awt."

    .line 445
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_23

    .line 464
    :cond_1b
    sget-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    if-eqz v20, :cond_25

    .line 496
    :cond_1c
    :goto_9
    sget-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-eqz v20, :cond_28

    .line 512
    :cond_1d
    :goto_a
    sget-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-eqz v20, :cond_29

    .line 528
    :cond_1e
    :goto_b
    const/4 v13, 0x0

    .line 529
    .local v13, "isCglibProxy":Z
    const/4 v14, 0x0

    .line 530
    .local v14, "isJavassistProxy":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_2a

    .line 544
    :goto_d
    if-eqz v13, :cond_2f

    .line 545
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v17

    .line 547
    .local v17, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v18

    .line 548
    .local v18, "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->putInternal(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 549
    return-object v18

    .line 438
    .end local v6    # "className":Ljava/lang/String;
    .end local v13    # "isCglibProxy":Z
    .end local v14    # "isJavassistProxy":Z
    .end local v17    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_20
    sget-object v20, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 440
    :cond_21
    sget-object v20, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 442
    :cond_22
    sget-object v20, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 446
    .restart local v6    # "className":Ljava/lang/String;
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 449
    sget-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-eqz v20, :cond_24

    .line 460
    :goto_e
    sget-object v20, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-object v20

    :cond_24
    :try_start_4
    const-string/jumbo v20, "java.awt.Color"

    .line 451
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.awt.Font"

    .line 452
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.awt.Point"

    .line 453
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.awt.Rectangle"

    .line 454
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_e

    .line 458
    :catch_2
    move-exception v10

    .line 456
    .local v10, "e":Ljava/lang/Throwable;
    const/16 v20, 0x1

    sput-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    goto :goto_e

    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_25
    const-string/jumbo v20, "java.time."

    .line 465
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_27

    :cond_26
    :try_start_5
    const-string/jumbo v20, "java.time.LocalDateTime"

    .line 469
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.LocalDate"

    .line 470
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.LocalTime"

    .line 471
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.ZonedDateTime"

    .line 472
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.OffsetDateTime"

    .line 473
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.OffsetTime"

    .line 474
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.ZoneOffset"

    .line 475
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.ZoneRegion"

    .line 476
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.Period"

    .line 477
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.Duration"

    .line 478
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.time.Instant"

    .line 479
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.util.Optional"

    .line 481
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.util.OptionalDouble"

    .line 482
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.util.OptionalInt"

    .line 483
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "java.util.OptionalLong"

    .line 484
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-object/from16 v19, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 487
    if-eqz v19, :cond_1c

    .line 488
    return-object v19

    :cond_27
    const-string/jumbo v20, "java.util.Optional"

    .line 466
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_26

    goto/16 :goto_9

    .line 493
    :catch_3
    move-exception v10

    .line 492
    .restart local v10    # "e":Ljava/lang/Throwable;
    const/16 v20, 0x1

    sput-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    goto/16 :goto_9

    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_28
    const-string/jumbo v20, "oracle.sql."

    .line 497
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    :try_start_6
    const-string/jumbo v20, "oracle.sql.DATE"

    .line 499
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-string/jumbo v20, "oracle.sql.TIMESTAMP"

    .line 500
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-object/from16 v19, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 503
    if-eqz v19, :cond_1d

    .line 504
    return-object v19

    .line 509
    :catch_4
    move-exception v10

    .line 508
    .restart local v10    # "e":Ljava/lang/Throwable;
    const/16 v20, 0x1

    sput-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    goto/16 :goto_a

    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_29
    const-string/jumbo v20, "springfox.documentation.spring.web.json.Json"

    .line 513
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    :try_start_7
    const-string/jumbo v20, "springfox.documentation.spring.web.json.Json"

    .line 515
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-object/from16 v19, v0
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 519
    if-eqz v19, :cond_1e

    .line 520
    return-object v19

    .line 525
    :catch_5
    move-exception v9

    .line 524
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    const/16 v20, 0x1

    sput-boolean v20, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    goto/16 :goto_b

    .line 530
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v13    # "isCglibProxy":Z
    .restart local v14    # "isJavassistProxy":Z
    :cond_2a
    aget-object v15, v21, v20

    .line 531
    .local v15, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "interfaceName":Ljava/lang/String;
    const-string/jumbo v23, "net.sf.cglib.proxy.Factory"

    .line 532
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 534
    :cond_2b
    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_2c
    const-string/jumbo v23, "org.springframework.cglib.proxy.Factory"

    .line 533
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2b

    const-string/jumbo v23, "javassist.util.proxy.ProxyObject"

    .line 536
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 539
    :cond_2d
    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_2e
    const-string/jumbo v23, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 537
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2d

    .line 530
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 544
    .end local v12    # "interfaceName":Ljava/lang/String;
    .end local v15    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2f
    if-nez v14, :cond_1f

    .line 552
    if-eqz p2, :cond_9

    .line 553
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->putInternal(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 4
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 291
    .local v2, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-nez v3, :cond_0

    .line 305
    :goto_0
    return-void

    :cond_0
    move-object v0, v2

    .line 292
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 294
    .local v0, "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-ne p0, v3, :cond_2

    .line 303
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    goto :goto_0

    .line 295
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v0, v3, :cond_1

    .line 296
    new-instance v1, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 297
    .local v1, "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 298
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 299
    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 8
    .param p2, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 311
    invoke-direct {p0, p1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 313
    .local v4, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v4, :cond_1

    .line 328
    instance-of v6, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v6, :cond_3

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v7, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 316
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    if-nez p3, :cond_2

    .line 319
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 322
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 324
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 325
    return-void

    .line 317
    :cond_2
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_1

    .end local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_3
    move-object v1, v4

    .line 329
    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 330
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 332
    .restart local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 333
    .local v3, "originalFeaturs":I
    if-nez p3, :cond_4

    .line 336
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 339
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-eq v3, v6, :cond_5

    .line 343
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .local v5, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 344
    if-eq v5, v6, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 346
    .local v2, "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_0

    .line 334
    .end local v2    # "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v5    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_2

    .line 340
    :cond_5
    return-void
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 14
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .prologue
    const/4 v9, 0x0

    .line 127
    iget-object v6, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 129
    .local v6, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v6, :cond_6

    .line 147
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 148
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 152
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 154
    .local v1, "asm":Z
    if-nez v1, :cond_a

    :cond_1
    const-class v10, Ljava/io/Serializable;

    if-ne v3, v10, :cond_b

    .line 156
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 159
    .end local v1    # "asm":Z
    :goto_2
    if-nez v1, :cond_c

    .line 163
    :cond_3
    :goto_3
    if-nez v1, :cond_d

    .line 181
    :cond_4
    :goto_4
    if-nez v1, :cond_11

    .line 197
    :cond_5
    :goto_5
    new-instance v9, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v9, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v9

    .line 130
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v8

    .local v8, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/lang/Void;

    .line 131
    if-ne v8, v10, :cond_8

    .line 142
    :cond_7
    :goto_6
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v10

    if-nez v10, :cond_0

    .line 143
    iput-boolean v9, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto :goto_0

    .line 133
    :cond_8
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 134
    .local v7, "seralizer":Ljava/lang/Object;
    instance-of v10, v7, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v10, :cond_7

    .line 135
    check-cast v7, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .end local v7    # "seralizer":Ljava/lang/Object;
    return-object v7

    .line 149
    .end local v8    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    new-instance v9, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v9, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v9

    .line 154
    .restart local v1    # "asm":Z
    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v10, v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_b
    const-class v10, Ljava/lang/Object;

    if-eq v3, v10, :cond_2

    goto :goto_2

    .line 159
    .end local v1    # "asm":Z
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 160
    const/4 v1, 0x0

    .local v1, "asm":Z
    goto :goto_3

    .line 164
    .end local v1    # "asm":Z
    :cond_d
    iget-object v10, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v10

    :goto_7
    if-ge v9, v11, :cond_4

    aget-object v5, v10, v9

    .line 165
    .local v5, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 167
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_10

    .line 170
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 175
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "asm":Z
    goto :goto_4

    .line 171
    .end local v1    # "asm":Z
    :cond_f
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_e

    .line 172
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v12

    if-nez v12, :cond_e

    .line 173
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Void;

    if-ne v12, v13, :cond_e

    .line 164
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 183
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_11
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_end_1
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 184
    .local v2, "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v2, :cond_5

    .line 185
    return-object v2

    .line 194
    .end local v2    # "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v9

    goto :goto_5

    :catch_1
    move-exception v9

    goto/16 :goto_5

    :catch_2
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create asm serializer error, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 139
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v8    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v10

    goto/16 :goto_6
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/reflect/Type;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "isEnum":Z
    instance-of v2, p1, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 572
    .end local v1    # "isEnum":Z
    :goto_0
    if-nez v1, :cond_0

    .line 576
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->putInternal(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result v2

    return v2

    .restart local v1    # "isEnum":Z
    :cond_1
    move-object v0, p1

    .line 569
    check-cast v0, Ljava/lang/Class;

    .line 570
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    .local v1, "isEnum":Z
    goto :goto_0
.end method

.method protected putInternal(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAsmEnable(Z)V
    .locals 1
    .param p1, "asmEnable"    # Z

    .prologue
    .line 205
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 208
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 209
    return-void

    .line 206
    :cond_0
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    return-void
.end method
