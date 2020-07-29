<!DOCTYPE html>
<html class="h-full">
 
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Mail lesson</title>
 <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
 
<body class="bg-gray-100 flex items-center justify-center h-full">
    <form method="POST" action="/contact" class="bg-white p-6 rounded shadow-md" style="width:300px;">
        @csrf
        <div class="mb-5">
 <label for="email" class="block text-xs uppercase font-semibold mb-1">
                Email Address
       </label>
<input type="email" id="email" name="email" class="border px-2 py-1 text-sm w-full">
    @error('email')
    <div class="text-red-500 text-xs">{{ $message }}</div>
    @enderror
       </div>
       <button type="submit" class="bg-blue-500 py-2 text-white rounded-full text-sm w-full">
            Email Me
        </button>
        @if (session('message'))
        <div>
        <p class="text-green-500 text-xs mt-2">
            {{ session('message') }}
        </p>
        </div>
        @endif

    </form>
</body>
</html>