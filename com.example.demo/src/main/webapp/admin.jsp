<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Advertisement Management</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <h1>Advertisement Management</h1>

    <h2>Create New Advertisement</h2>
    <form action="/create-advertisement" method="POST">
        <label for="ad-title">Title:</label>
        <input type="text" id="ad-title" name="ad-title" required><br>

        <label for="ad-image">Image:</label>
        <input type="file" id="ad-image" name="ad-image" accept="image/*" required><br>

        <label for="ad-link">Link:</label>
        <input type="text" id="ad-link" name="ad-link" required><br>

        <input type="submit" value="Create Advertisement">
    </form>

    <h2>Manage Existing Advertisements</h2>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Image</th>
                <th>Link</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Populate this section with data from your database or API -->
            <tr>
                <td>Advertisement 1</td>
                <td><img src="path/to/image1.jpg" alt="Advertisement 1"></td>
                <td><a href="https://www.example.com" target="_blank">https://www.example.com</a></td>
                <td>
                    <a href="/edit-advertisement?id=1">Edit</a>
                    <a href="/delete-advertisement?id=1">Delete</a>
                </td>
            </tr>
            <tr>
                <td>Advertisement 2</td>
                <td><img src="path/to/image2.jpg" alt="Advertisement 2"></td>
                <td><a href="https://www.example.com" target="_blank">https://www.example.com</a></td>
                <td>
                    <a href="/edit-advertisement?id=2">Edit</a>
                    <a href="/delete-advertisement?id=2">Delete</a>
                </td>
            </tr>
        </tbody>
    </table>

    <script>
        // Add your custom JavaScript code here
    </script>
</body>
</html>

